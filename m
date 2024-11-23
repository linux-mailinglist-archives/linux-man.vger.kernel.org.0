Return-Path: <linux-man+bounces-2056-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D103F9D6B80
	for <lists+linux-man@lfdr.de>; Sat, 23 Nov 2024 21:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58621161EA3
	for <lists+linux-man@lfdr.de>; Sat, 23 Nov 2024 20:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0321836D9;
	Sat, 23 Nov 2024 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nn9HDYil"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D13433AB;
	Sat, 23 Nov 2024 20:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732394993; cv=none; b=SZOVpBO9YhOfoVEGcY7AEXY4QouTlH2erdx0+ijMZWSf1DNiwetrttFjtuig3YJDPYonMeaDBehr0h2wdto03tp9FQJF/y99Q9B32mxgcfjRrSk9IZU1HRABiTUAe28piIoqa8TI/ZgDzNCt/oBKge6+ZOO1y+1or4jI0Rza3r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732394993; c=relaxed/simple;
	bh=sbOQvPEOIRTYVwA6k77NUP1VbZPZs3zGKnoYJPZ5VGc=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=j2SxvfY51hbN+C0Evi/S4gqEm/7LCPNHbZ37weRqfTXmB31/tXAEVBUCct8zUE/XSuBBGuqEUH0R2h1UcuTD91dqgGabg/tEgYBVwd4hVhX3c8sjw+FqouuQsOOFqr+X3bhlPW6HAehWUgaY27IehtipsKRv15svi966chSng7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nn9HDYil; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7f71f2b1370so2684063a12.1;
        Sat, 23 Nov 2024 12:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732394991; x=1732999791; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sbOQvPEOIRTYVwA6k77NUP1VbZPZs3zGKnoYJPZ5VGc=;
        b=nn9HDYiltheVBUzCclszoZi8+UGzM8mbEr+UlV/LrBgUHNAYju75cFF8bLxiW7MumK
         nAqlxGs3L3W5b31KyGJJzoplIo04wxaCKk9IFE+VkUCtNuozvMXnpE/7yzxFqhqjZGhA
         PGDtMGHjRi1febsVRXhs5RcyEvD+PpKlEj314VWTt/pVif/r7QGJjixMgt/hddBmkXV/
         gzeNlK6uj3tRCn+k/7w57KsWktLR9vs/CueH6Wi1gzE77vkJ6ZJihZmjOa0kkNzTCeCc
         9TiviJ5iG6wPVOKS+9RAhj0NzNfvRXQD7Ww1ai0ev8dxunVFPIhKG9JlAjweeFCzm8sE
         8l2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732394991; x=1732999791;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sbOQvPEOIRTYVwA6k77NUP1VbZPZs3zGKnoYJPZ5VGc=;
        b=THsHN8KyJv88nNcxkyY1adR7vfxHl26zPohcgl1dFS9bpqy/UibKAIkTyOJJgJ7OtS
         9k/aJOYsE4a99EgltgbkOdhU1pGnvX9puB0MH/KgIXqjktmAw9QWW1emgh1RdZr8v9Go
         d4ZH19KVCauTw6N7ons3w0h4GSZybEBaAKnvuQKMkCT069UjSLaj+xf+GHVKyD3TXpmy
         gydIHZFKLWCCm/BNu9/ysNDn1caw5yojy3i6vZ8tggzAU/FIBd+IcqJ1+o6OjCcTHCAH
         ldywRVsSF1N0Uyk8S/52rR9UNRFUElBtleM0AFlwScW+niPWK0+Uckx95oUS4xeDNsUF
         6SJw==
X-Forwarded-Encrypted: i=1; AJvYcCVO9pYU15k/YQb+JqOXHBSzmfEvdGP0yuvBn6tU50Fg3THrQb1q+I2u6YQdOOzYeXnDogIu1Me+XmBVOkLRlWDX@vger.kernel.org
X-Gm-Message-State: AOJu0YyAJGmJH6qZxLxgiRv3JOaxMZyhUU2b4u2M+haAIp9J+6oXC7pH
	Mze7nYavx5iZ1AxC19aeOgjv0RnyFq2ejuSJkBEfywKtslsZ3HDYs3IruSHdhIo8GY3Ae4Qa/g6
	C2gOZL5P2GCh2KY5X1GehbD5Jh/TkXIgnbXAT90sV
X-Gm-Gg: ASbGnctsxSI6Yp9MO7tg5oxQdaaQHjEwteYxi8j6OvMXXvqFWvj6WU1e+SPhJftMGeB
	CYLVYbqcERb4rFocv2BWwHg5j/rb4pw==
X-Google-Smtp-Source: AGHT+IFKvuh7QePvdsmZfcZvk3IoK0V44DSmjO6ECUCMEgijI9ccYspJx+PGdi6+MjV6br2+bwmGFZ5hIUwNvDHiRuo=
X-Received: by 2002:a17:90b:1b06:b0:2ea:6ad7:8f39 with SMTP id
 98e67ed59e1d1-2eb0e860066mr9665245a91.29.1732394991153; Sat, 23 Nov 2024
 12:49:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Date: Sat, 23 Nov 2024 21:49:40 +0100
Message-ID: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
Subject: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-perf-users@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000000f188b06279aa41d"

--0000000000000f188b06279aa41d
Content-Type: text/plain; charset="UTF-8"

I have found that when monitoring a file descriptor returned by
perf_event_open() with poll(), it is required to allocate an mmap ring
buffer to properly receive overflow notifications. If this is not
done, poll() keeps continuously returning POLLHUP, even when an
overflow notification should not be raised. Notably, this behavior is
different from listening for overflow notifications by setting the
O_ASYNC flag on the file descriptor - in that case, creating the mmap
ring buffer is not required to receive the SIGIO signal delivered
after the file descriptor becomes available for reading. I attach code
showcasing this behavior (the functionality is explained in the
comments).

This behavior by itself is not a problem, however, in the current
state of the perf_event_open man page, it's not documented, and in
fact, there are confusing statements that seem to contradict my
findings. In the MMAP layout section of the page, you can find this
sentence:
Before Linux 2.6.39, there is a bug that means you must allocate
an mmap ring buffer when sampling even if you do not plan to
access it.
Unless I'm somehow misunderstanding it, this statement does not seem
to be well worded, or alternatively this bug does not seem to be
fixed. I would not call simply using poll() on the file descriptor
intent to access the ring buffer (unless it's meant to be understood
that way, in which case, in my opinion, it's quite confusing).
Additionally, I cannot find any change in Linux 2.6.39 that would fit
this description (however, that is likely just due to my lack of
experience searching through the kernel changelogs and commits).

I would like to receive clarification on whether this current behavior
of perf_event_open is intentional and desired (that is why I cc'd
linux-perf-users). If it is, I could also create a patch to the man
page that lays out the requirements more clearly. In that case, it
would also be helpful to further clarify the wording of the sentence
mentioning the Linux 2.6.39 change, however I don't know if I'm
qualified to do that, because as I have previously stated, I am unable
to find what changes that sentence actually refers to.

--0000000000000f188b06279aa41d
Content-Type: text/x-c++src; charset="US-ASCII"; name="mmap_demo.cpp"
Content-Disposition: attachment; filename="mmap_demo.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_m3un410v0>
X-Attachment-Id: f_m3un410v0

I2luY2x1ZGUgPGxpbnV4L3BlcmZfZXZlbnQuaD4KI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+CiNp
bmNsdWRlIDxzeXMvbW1hbi5oPgojaW5jbHVkZSA8aW9zdHJlYW0+CiNpbmNsdWRlIDx1bmlzdGQu
aD4KI2luY2x1ZGUgPHNpZ25hbC5oPgojaW5jbHVkZSA8ZmNudGwuaD4KI2luY2x1ZGUgPGNzdGRp
bnQ+CiNpbmNsdWRlIDxwb2xsLmg+CgovLyBNb2RpZnkgdGhlIHZhbHVlIG9mIHRoaXMgY29uc3Rh
bnQgdG8gY2hhbmdlIHRoZSB2YXJpYW50IG9mIHRoZSBwcm9ncmFtCi8vIHRoYXQgaXMgcnVuLiBU
aGUgcG9zc2libGUgdmFsdWVzIGFyZToKLy8gMTogU0lHSU8gd2l0aG91dCBtbWFwLCAyOiBTSUdJ
TyB3aXRoIG1tYXAsIAovLyAzOiBwb2xsIHdpdGhvdXQgbW1hcCwgNDogcG9sbCB3aXRoIG1tYXAK
Ly8gQXMgc3RhdGVkIGluIHRoZSBlbWFpbCwgdmFyYWludHMgMSwgMiBhbmQgNCBwcm9wZXJseSB0
cmlnZ2VyIG92ZXJmbG93Ci8vIG5vdGlmaWNhdGlvbnMgYXBwcm94aW1hdGVseSBhZnRlciBlYWNo
IDEwMDAwMDAwMDAgaGFyZHdhcmUgaW5zdHJ1Y3Rpb25zLAovLyBob3dldmVyIHdoZW4gdGhlIHBy
b2dyYW0gaXMgcnVuIHdpdGggdmFyaWFudCA9IDMsIHBvbGwgd2lsbCBqdXN0IAovLyBjb250aW51
b3VzbHkgcmV0dXJuIFBPTExIVVAsIHdpdGhvdXQgd2FpdGluZyBmb3IgdGhlIG92ZXJmbG93Ci8v
IAovLyBBbHNvLCBiZWZvcmUgcnVubmluZyBhbnkgdmFyaWFudCwgbWFrZSBzdXJlIHRvIHNldCB0
aGUgCi8vIGtlcm5lbC5wZXJmX2V2ZW50X3BhcmFub2lkIHN5c2N0bCB0byAtMSAKLy8gKGZvciBl
eGFtcGxlIGJ5IHJ1bm5pbmcgc3VkbyBzeXNjdGwga2VybmVsLnBlcmZfZXZlbnRfcGFyYW5vaWQ9
LTEpCmNvbnN0IGludCB2YXJpYW50ID0gMTsKCnN0YXRpYyBsb25nIHBlcmZfZXZlbnRfb3Blbihz
dHJ1Y3QgcGVyZl9ldmVudF9hdHRyICpod19ldmVudCwgcGlkX3QKCXBpZCwgaW50IGNwdSwgaW50
IGdyb3VwX2ZkLCB1bnNpZ25lZCBsb25nIGZsYWdzKSB7CiAgICByZXR1cm4gc3lzY2FsbChTWVNf
cGVyZl9ldmVudF9vcGVuLCBod19ldmVudCwgcGlkLCBjcHUsIGdyb3VwX2ZkLCBmbGFncyk7Cn0K
CnZvbGF0aWxlIHNpZ19hdG9taWNfdCBzaWdpb09jY3VycmVkID0gMDsKdm9pZCBzaWdpb0hhbmRs
ZXIoaW50IHNpZ251bSkgewogICAgc2lnaW9PY2N1cnJlZCA9IDE7Cn0KCnVpbnQ2NF90IGdldF9p
bnN0cnVjdGlvbnNfdXNlZChpbnQgcGVyZl9mZCkgewogICAgdWludDY0X3QgcmVzdWx0OwogICAg
c3NpemVfdCBzaXplID0gcmVhZChwZXJmX2ZkLCAmcmVzdWx0LCBzaXplb2YodWludDY0X3QpKTsK
CiAgICBpZiAoc2l6ZSAhPSBzaXplb2YocmVzdWx0KSkgewogICAgICAgIHN0ZDo6Y291dCA8PCAi
cmVhZCBmYWlsZWQiOwogICAgICAgIGV4aXQoMCk7CiAgICB9CiAgICBpZiAocmVzdWx0IDwgMCkg
ewogICAgICAgIHN0ZDo6Y291dCA8PCAicmVhZCBuZWdhdGl2ZSBpbnN0cnVjdGlvbnMgY291bnQi
OwogICAgICAgIGV4aXQoMCk7CiAgICB9CgogICAgcmV0dXJuIHJlc3VsdDsKfQoKaW50IG1haW4o
KSB7CiAgICBzdHJ1Y3Qgc2lnYWN0aW9uIHNhOwogICAgc2Euc2FfaGFuZGxlciA9IHNpZ2lvSGFu
ZGxlcjsgc2Euc2FfZmxhZ3MgPSAwOyBzaWdlbXB0eXNldCgmc2Euc2FfbWFzayk7CiAgICBzaWdh
Y3Rpb24oU0lHSU8sICZzYSwgMCk7CgogICAgaW50IGNoaWxkID0gZm9yaygpLCBudW0gPSAyOwog
ICAgaWYoY2hpbGQgPT0gMCkgewogICAgICAgIHdoaWxlKHRydWUpIHsKICAgICAgICAgICAgbnVt
ICo9IDI7CiAgICAgICAgfQogICAgfQoKICAgIHN0cnVjdCBwZXJmX2V2ZW50X2F0dHIgYXR0cnMg
e307IGF0dHJzLmNvbmZpZyA9IFBFUkZfQ09VTlRfSFdfSU5TVFJVQ1RJT05TOyAKICAgIGF0dHJz
LnR5cGUgPSBQRVJGX1RZUEVfSEFSRFdBUkU7IGF0dHJzLnNhbXBsZV9wZXJpb2QgPSAxMDAwMDAw
MDAwOyAKCWF0dHJzLndha2V1cF9ldmVudHMgPSAxOwogICAgaW50IHBlcmZfZmQgPSBwZXJmX2V2
ZW50X29wZW4oJmF0dHJzLCBjaGlsZCwgLTEsIC0xLCAwKTsKCiAgICBpZih2YXJpYW50ID09IDIg
b3IgdmFyaWFudCA9PSA0KSB7CiAgICAgICAgdm9pZCAqYmFzZSA9IG1tYXAoTlVMTCwgZ2V0cGFn
ZXNpemUoKSAqICg4MTkyICsgMSksIFBST1RfUkVBRAoJCQl8IFBST1RfV1JJVEUsIE1BUF9TSEFS
RUQsIHBlcmZfZmQsIDApOwoJCQogICAgICAgIGlmIChiYXNlID09IE1BUF9GQUlMRUQpIHsKICAg
ICAgICAgICAgc3RkOjpjb3V0IDw8ICJtbWFwIGVyciAiIDw8IGVycm5vIDw8ICJcbiI7CiAgICAg
ICAgICAgIHJldHVybiAtMTsKICAgICAgICB9CiAgICB9CgogICAgaWYodmFyaWFudCA9PSAxIG9y
IHZhcmlhbnQgPT0gMikgewogICAgICAgIGZjbnRsKHBlcmZfZmQsIEZfU0VUT1dOLCBnZXRwaWQo
KSk7CiAgICAgICAgZmNudGwocGVyZl9mZCwgRl9TRVRGTCwgKGZjbnRsKHBlcmZfZmQsIEZfR0VU
RkwsIDApIHwgT19BU1lOQykpOwogICAgfQoKICAgIHdoaWxlKHRydWUpIHsKICAgICAgICBpZih2
YXJpYW50ID09IDEgb3IgdmFyaWFudCA9PSAyKSB7CiAgICAgICAgICAgIGlmKHNpZ2lvT2NjdXJy
ZWQpIHsKICAgICAgICAgICAgICAgIHN0ZDo6Y291dCA8PCAiU0lHSU8gZGVsaXZlcmVkLCBpbnN0
cnVjdGlvbnMgdXNlZDogIiA8PAoJCQkJCWdldF9pbnN0cnVjdGlvbnNfdXNlZChwZXJmX2ZkKSA8
PCAiXG4iOwoJCQkJCiAgICAgICAgICAgICAgICBzaWdpb09jY3VycmVkID0gMDsKICAgICAgICAg
ICAgfQogICAgICAgIH0KCiAgICAgICAgaWYodmFyaWFudCA9PSAzIG9yIHZhcmlhbnQgPT0gNCkg
ewogICAgICAgICAgICBzdHJ1Y3QgcG9sbGZkIHBmZCA9IHsgLmZkID0gcGVyZl9mZCwgLmV2ZW50
cyA9IFBPTExJTiB9OwogICAgICAgICAgICBpbnQgcmVzID0gcG9sbCgmcGZkLCAxLCAxMDAwMDAw
KTsKCiAgICAgICAgICAgIHN0ZDo6Y291dCA8PCAiUG9sbCByZXR1cm5lZCAiOwogICAgICAgICAg
ICBpZihwZmQucmV2ZW50cyA9PSBQT0xMSFVQKQogICAgICAgICAgICAgICAgc3RkOjpjb3V0IDw8
ICJQT0xMSFVQLCBpbnN0cnVjdGlvbnMgdXNlZDogIiA8PCAKCQkJCQlnZXRfaW5zdHJ1Y3Rpb25z
X3VzZWQocGVyZl9mZCkgPDwgIlxuIjsKICAgICAgICAgICAgZWxzZSBpZihwZmQucmV2ZW50cyA9
PSBQT0xMSU4pCiAgICAgICAgICAgICAgICBzdGQ6OmNvdXQgPDwgIlBPTExJTiwgaW5zdHJ1Y3Rp
b25zIHVzZWQ6ICIgPDwKCQkJCQlnZXRfaW5zdHJ1Y3Rpb25zX3VzZWQocGVyZl9mZCkgPDwgIlxu
IjsKICAgICAgICAgICAgZWxzZQogICAgICAgICAgICAgICAgc3RkOjpjb3V0IDw8IHBmZC5yZXZl
bnRzIDw8ICJcbiI7CiAgICAgICAgfQogICAgfQoKICAgIHJldHVybiAwOwp9
--0000000000000f188b06279aa41d--

