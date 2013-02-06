import System.Process
import System.IO

getData :: Maybe Handle -> IO String
getData (Just h) = hGetContents h
getData Nothing = return ""

putData :: Maybe Handle -> String -> IO ()
putData (Just h) s = hPutStr h s
putData Nothing s = return ()

main = do
  (stdin, stdout, stderr, p) <- createProcess (proc "wc" []){std_in = CreatePipe, std_out = CreatePipe }
  putData stdin "a b c"
  d <- getData stdout
  print d
