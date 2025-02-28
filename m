Return-Path: <linux-man+bounces-2539-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F272EA496CB
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 11:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 294471893CFE
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 10:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8B2325E45E;
	Fri, 28 Feb 2025 10:13:14 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.openworlds.info (mail.openworlds.info [54.38.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B5725DD03
	for <linux-man@vger.kernel.org>; Fri, 28 Feb 2025 10:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.38.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740737594; cv=none; b=TD6Ef9qpHH1s+Ayk813dkcUiyn742CjnTBQNjBGOI3hRGAVIKo2vlGGoC1kiH2KMQes+08Lt8o3OkUWutRyClpeQF9JRtBvSbCj9aQuYJpkZ7UkHaJXtknIORVC6MUphiQpech6/Qi3zNR7NojFswAwN6r38vnqpAgrTdr56H0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740737594; c=relaxed/simple;
	bh=w8fe4M3W12JyDvFgbtbp5u3BcnosE8iIbhr2XXtn7SA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=kFO64TD3tdvaqW+boKaYdNiKM2vUGFy4rMGM6NONhglbOy2xYF6R9SVwL+vmQ0RhqmszdGr6jzM3N+56c2TJCN2ZBQNuJA+T+5hQpZC8Neyf4Fq/mgXZxK+3ZSMUzvYOlJbueP1i2JHeACNZczrZGPiPyoIc1SvAHif3chpOOFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re; spf=pass smtp.mailfrom=everwhe.re; arc=none smtp.client-ip=54.38.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everwhe.re
Received: 
	by openworlds.info (OpenSMTPD) with ESMTPSA id 779db95a (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO)
	for <linux-man@vger.kernel.org>;
	Fri, 28 Feb 2025 11:13:09 +0100 (CET)
Date: Fri, 28 Feb 2025 10:13:04 +0000
From: rahl <rahl@everwhe.re>
To: linux-man@vger.kernel.org
Subject: Incorrect const in futex(2) example code
Message-ID: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary=----91JW6ZX4023O153NZABU3DKGKADXTJ
Content-Transfer-Encoding: 7bit

------91JW6ZX4023O153NZABU3DKGKADXTJ
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I noticed that 'const' is used for both 'one' and 'zero' variables in the E=
xamples section demo code of manpage 'futex(2)'=2E

The variables are both used in calls to 'atomic_compare_exchange_strong()'=
 where the 'const' is discarded as it may write to the 'expected' parameter=
 during a "failure" case=2E

Attached is the trivial patch to remove the offending qualifiers=2E

Cheers
------91JW6ZX4023O153NZABU3DKGKADXTJ
Content-Type: text/x-diff;
 name=futex2.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=futex2.patch;
 size=732

ZGlmZiAtLWdpdCBhL21hbi9tYW4yL2Z1dGV4LjIgYi9tYW4vbWFuMi9mdXRleC4yCmluZGV4IDcw
YzM5NTZhYi4uMzMxNjQ2MjE4IDEwMDY0NAotLS0gYS9tYW4vbWFuMi9mdXRleC4yCisrKyBiL21h
bi9tYW4yL2Z1dGV4LjIKQEAgLTE4MjIsOCArMTgyMiw4IEBAIGZ1dGV4KHVpbnQzMl90ICp1YWRk
ciwgaW50IGZ1dGV4X29wLCB1aW50MzJfdCB2YWwsCiBzdGF0aWMgdm9pZAogZndhaXQodWludDMy
X3QgKmZ1dGV4cCkKIHsKLSAgICBsb25nICAgICAgICAgICAgczsKLSAgICBjb25zdCB1aW50MzJf
dCAgb25lID0gMTsKKyAgICBsb25nICAgICAgICBzOworICAgIHVpbnQzMl90ICAgIG9uZSA9IDE7
CiBcJgogICAgIC8qIGF0b21pY19jb21wYXJlX2V4Y2hhbmdlX3N0cm9uZyhwdHIsIG9sZHZhbCwg
bmV3dmFsKQogICAgICAgIGF0b21pY2FsbHkgcGVyZm9ybXMgdGhlIGVxdWl2YWxlbnQgb2Y6CkBA
IC0xODU0LDggKzE4NTQsOCBAQCBmd2FpdCh1aW50MzJfdCAqZnV0ZXhwKQogc3RhdGljIHZvaWQK
IGZwb3N0KHVpbnQzMl90ICpmdXRleHApCiB7Ci0gICAgbG9uZyAgICAgICAgICAgIHM7Ci0gICAg
Y29uc3QgdWludDMyX3QgIHplcm8gPSAwOworICAgIGxvbmcgICAgICAgIHM7CisgICAgdWludDMy
X3QgICAgemVybyA9IDA7CiBcJgogICAgIC8qIGF0b21pY19jb21wYXJlX2V4Y2hhbmdlX3N0cm9u
ZygpIHdhcyBkZXNjcmliZWQKICAgICAgICBpbiBjb21tZW50cyBhYm92ZS4gKi8K

------91JW6ZX4023O153NZABU3DKGKADXTJ--

