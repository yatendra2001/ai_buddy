// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatBotAdapter extends TypeAdapter<ChatBot> {
  @override
  final int typeId = 0;

  @override
  ChatBot read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatBot(
      messagesList: (fields[4] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
      id: fields[0] as String,
      title: fields[2] as String,
      typeOfBot: fields[3] as String,
      attachmentPath: fields[1] as String?,
      embeddings: (fields[5] as Map?)?.map(
        (dynamic k, dynamic v) =>
            MapEntry(k as String, (v as List).cast<num>()),
      ),
    );
  }

  @override
  void write(BinaryWriter writer, ChatBot obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.attachmentPath)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.typeOfBot)
      ..writeByte(4)
      ..write(obj.messagesList)
      ..writeByte(5)
      ..write(obj.embeddings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatBotAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
