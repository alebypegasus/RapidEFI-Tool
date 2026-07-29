from deep_translator import GoogleTranslator

translator = GoogleTranslator(source='zh-CN', target='en')
batch = ['你好', '世界', '硬件信息']
try:
    res = translator.translate_batch(batch)
    print("Batch success:", res)
except Exception as e:
    print("Batch error:", e)
