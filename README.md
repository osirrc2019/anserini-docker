# Running
Use the commands below to run the image from the [jig](https://github.com/osirrc2019/jig) directory, updating the corpus details as appropriate.

## Prepare
```
python run.py prepare \
  --repo osirrc2019/anserini \
  --tag latest \
  --collections robust04=/home/ryan/sync/ir/collections/disk45=trectext
```

## Search
```
python run.py search \
  --repo osirrc2019/anserini \
  --tag latest \
  --output $(pwd)/out \
  --qrels qrels/qrels.robust2004.txt \
  --topic topics.robust04.301-450.601-700.txt \
  --collection robust04
```

# Image Best Practices
- Ensure your scripts handle new command-line parameters (i.e., in Python use `parse_known_args()` instead of `parse_args()` to help compatability with newer versions of `jig`.
