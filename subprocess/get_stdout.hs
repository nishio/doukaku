import System.Process
import System.IO

getData :: Maybe Handle -> IO String
getData (Just h) = hGetContents h
getData Nothing = return ""

main = do
  (stdin, stdout, stderr, p) <- createProcess (proc "ls" []){ std_out = CreatePipe }
  d <- getData stdout
  print d
  (stdin, stdout, stderr, p) <- createProcess (proc "echo" ["hoge"]){ std_out = CreatePipe }
  d <- getData stdout
  print d