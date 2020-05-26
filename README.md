Tapis Demo Docker Container -

This container launches a Jupyter Notebook session with the Tapis Python SDK and dependencies installed and contains sample notebooks.

To get started:

1. docker build -t tapis-jupyter .
2. docker run -p 8888:8888 tapis-jupyter

You will see output like:
```
[I 18:39:07.631 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[I 18:39:08.811 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.7/site-packages/jupyterlab
[I 18:39:08.811 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 18:39:08.816 NotebookApp] Serving notebooks from local directory: /home/jovyan/tapy
[I 18:39:08.816 NotebookApp] The Jupyter Notebook is running at:
[I 18:39:08.816 NotebookApp] http://7a3d79cd2cfd:8888/?token=0e18b5681f7b7fa002188d5ce592ae1ad0de22758a2ce1f5
[I 18:39:08.816 NotebookApp]  or http://127.0.0.1:8888/?token=0e18b5681f7b7fa002188d5ce592ae1ad0de22758a2ce1f5
[I 18:39:08.816 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[W 18:39:08.822 NotebookApp] No web browser found: could not locate runnable browser.
[C 18:39:08.823 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://7a3d79cd2cfd:8888/?token=0e18b5681f7b7fa002188d5ce592ae1ad0de22758a2ce1f5
     or http://127.0.0.1:8888/?token=0e18b5681f7b7fa002188d5ce592ae1ad0de22758a2ce1f5
```

3. Copy the URL to your browser
4. Open one of the provided notebooks and enjoy!
