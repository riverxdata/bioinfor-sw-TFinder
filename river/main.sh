cd $RIVER_HOME/jobs/$job_id/analysis
ENV=$repo_name-$tag
micromamba create -n $ENV python=3.12 -y 
micromamba run -n $ENV pip install -r requirements.txt
micromamba run -n $ENV streamlit run TFinder-v1.py --server.port $PORT --server.headless true
