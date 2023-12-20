Return-Path: <linux-man+bounces-267-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C398B81A6A6
	for <lists+linux-man@lfdr.de>; Wed, 20 Dec 2023 19:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6D231F21274
	for <lists+linux-man@lfdr.de>; Wed, 20 Dec 2023 18:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB672481B8;
	Wed, 20 Dec 2023 18:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XQ+DwObi"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82C9481A0
	for <linux-man@vger.kernel.org>; Wed, 20 Dec 2023 18:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703095546;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OTSjPsK80rLzK7efVaWHnsIacvhebfXLASCnL2BhEs8=;
	b=XQ+DwObiYjy4KAgcOclLoFXG+jdOiWXAsG3pu2491JDV+gcU5WOVCMVgdFSrAGEN51mEbx
	gIb5njtWFcn2FHZ5Q443YbOGu//m7L9D6Gr7y5N+c9SZrf2axLO17wz7AFO3Of1EfTaIdv
	rwOgIDtCEmgHBHYYwI54ghGpvIYlLgM=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-663-Ma_tHHKdNlyYUOQHJQq1YA-1; Wed, 20 Dec 2023 13:05:43 -0500
X-MC-Unique: Ma_tHHKdNlyYUOQHJQq1YA-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a1f93205e60so299340866b.3
        for <linux-man@vger.kernel.org>; Wed, 20 Dec 2023 10:05:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703095542; x=1703700342;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OTSjPsK80rLzK7efVaWHnsIacvhebfXLASCnL2BhEs8=;
        b=hFrSf2ZqAuSdSjQ9o86uoDKxSyZSoRByflBvAaWduibqBwp2Oe7SDe/kH2FitR1Qc0
         dSyh76eh57WC1pu7eIE0ALHlsCwjTY0E+ILukb++Irm8V0ont9UrngYSLN/JuPwETs37
         3b+K7NThhhOZMRAtlPPICJZcBuIwfClIAGDV6YdLMJa/K1cDZUzVYSHdNjWPymqcnNnX
         X/xjJKF0W1LHrGM9VMtBGBZX1ce6eVUX9aIGvDN2JyhOnIet491D0T2kYe7Rs5C6tdaZ
         n1bfVW9sarV4icKeQ4kYBJ0LYZnv3VzAQnVP9aS7zX7FEdzaQHAEnVn9TdrrUYxT8grq
         ubJQ==
X-Gm-Message-State: AOJu0YxEpDmgrtuJ1k/SwsulBFTjCeha8BK26F+4txuFDjZ32zFEi4OH
	Cj7dmTb9A1ONmApAZLjbFbCVxshktRlNhoIBRWWZ+NRc96xK/YdIk+hRPEioejdsF6pX+ARXAXE
	peCR5G9YvvZTY2mqhUa9E9CowqWK8nHs8qyui
X-Received: by 2002:a17:906:a016:b0:a1c:616e:cdd2 with SMTP id p22-20020a170906a01600b00a1c616ecdd2mr8303553ejy.35.1703095542552;
        Wed, 20 Dec 2023 10:05:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7mMxYiBLFM5r+eyFQjeYOHSQv41rO7AqFlxyXLTTMXLaAbTfP/3Nws81lWCW1uFrUs5duMA6cp+LIMnysyow=
X-Received: by 2002:a17:906:a016:b0:a1c:616e:cdd2 with SMTP id
 p22-20020a170906a01600b00a1c616ecdd2mr8303548ejy.35.1703095542283; Wed, 20
 Dec 2023 10:05:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZWnXlcsVJfPO1Qsb@debian> <20231201220743.32491-1-kuniyu@amazon.com>
 <CABPeg3ZZCDkRaVy2towZ-amU9v-rQSXZ_M_KnfY1SfWhhT-AZw@mail.gmail.com>
In-Reply-To: <CABPeg3ZZCDkRaVy2towZ-amU9v-rQSXZ_M_KnfY1SfWhhT-AZw@mail.gmail.com>
From: Alexey Tikhonov <atikhono@redhat.com>
Date: Wed, 20 Dec 2023 19:05:31 +0100
Message-ID: <CABPeg3Z5p2yapwEwPdHqDZiDL-W_gVgMc39A0Kdd95LNd+OwHA@mail.gmail.com>
Subject: [patch] unix.7: SO_PEERCRED: Mention listen(2)
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: libc-alpha@sourceware.org, netdev@vger.kernel.org, 
	Kuniyuki Iwashima <kuniyu@amazon.com>
Content-Type: multipart/mixed; boundary="000000000000d12e8e060cf4d4a2"

--000000000000d12e8e060cf4d4a2
Content-Type: text/plain; charset="UTF-8"

From c835c1c7c7047590263cf6c6d516092b165e013d Mon Sep 17 00:00:00 2001
From: Alexey Tikhonov <atikhono@redhat.com>
Date: Wed, 20 Dec 2023 18:28:34 +0100
Subject: [PATCH] unix.7: SO_PEERCRED: Mention listen(2)

In case of connected AF_UNIX stream sockets, server-side
credentials are set at the time of a call to listen(2),
not when client-side calls connect(2).

This is important if server side process changes UID/GID
after listen(2) and before connect(2).

Reproducer is available in https://bugzilla.redhat.com/show_bug.cgi?id=2247682

Behavior was confirmed in the email thread
https://lore.kernel.org/linux-man/CABPeg3a9L0142gmdZZ+0hoD+Q3Vgv0BQ21g8Z+gf2kznWouErA@mail.gmail.com/

Signed-off-by: Alexey Tikhonov <atikhono@redhat.com>
---
 man7/unix.7 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man7/unix.7 b/man7/unix.7
index e9edad467..71cdfc758 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -331,7 +331,8 @@ This read-only socket option returns the
 credentials of the peer process connected to this socket.
 The returned credentials are those that were in effect at the time
 of the call to
-.BR connect (2)
+.BR connect (2),
+.BR listen (2),
 or
 .BR socketpair (2).
 .IP
-- 
2.41.0

--000000000000d12e8e060cf4d4a2
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-unix.7-SO_PEERCRED-Mention-listen-2.patch"
Content-Disposition: attachment; 
	filename="0001-unix.7-SO_PEERCRED-Mention-listen-2.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lqe33gk70>
X-Attachment-Id: f_lqe33gk70

RnJvbSBjODM1YzFjN2M3MDQ3NTkwMjYzY2Y2YzZkNTE2MDkyYjE2NWUwMTNkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBbGV4ZXkgVGlraG9ub3YgPGF0aWtob25vQHJlZGhhdC5jb20+
CkRhdGU6IFdlZCwgMjAgRGVjIDIwMjMgMTg6Mjg6MzQgKzAxMDAKU3ViamVjdDogW1BBVENIXSB1
bml4Ljc6IFNPX1BFRVJDUkVEOiBNZW50aW9uIGxpc3RlbigyKQoKSW4gY2FzZSBvZiBjb25uZWN0
ZWQgQUZfVU5JWCBzdHJlYW0gc29ja2V0cywgc2VydmVyLXNpZGUKY3JlZGVudGlhbHMgYXJlIHNl
dCBhdCB0aGUgdGltZSBvZiBhIGNhbGwgdG8gbGlzdGVuKDIpLApub3Qgd2hlbiBjbGllbnQtc2lk
ZSBjYWxscyBjb25uZWN0KDIpLgoKVGhpcyBpcyBpbXBvcnRhbnQgaWYgc2VydmVyIHNpZGUgcHJv
Y2VzcyBjaGFuZ2VzIFVJRC9HSUQKYWZ0ZXIgbGlzdGVuKDIpIGFuZCBiZWZvcmUgY29ubmVjdCgy
KS4KClJlcHJvZHVjZXIgaXMgYXZhaWxhYmxlIGluIGh0dHBzOi8vYnVnemlsbGEucmVkaGF0LmNv
bS9zaG93X2J1Zy5jZ2k/aWQ9MjI0NzY4MgoKQmVoYXZpb3Igd2FzIGNvbmZpcm1lZCBpbiB0aGUg
ZW1haWwgdGhyZWFkCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1hbi9DQUJQZWczYTlM
MDE0MmdtZFpaKzBob0QrUTNWZ3YwQlEyMWc4WitnZjJrem5Xb3VFckFAbWFpbC5nbWFpbC5jb20v
CgpTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgVGlraG9ub3YgPGF0aWtob25vQHJlZGhhdC5jb20+Ci0t
LQogbWFuNy91bml4LjcgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21hbjcvdW5peC43IGIvbWFuNy91bml4LjcKaW5k
ZXggZTllZGFkNDY3Li43MWNkZmM3NTggMTAwNjQ0Ci0tLSBhL21hbjcvdW5peC43CisrKyBiL21h
bjcvdW5peC43CkBAIC0zMzEsNyArMzMxLDggQEAgVGhpcyByZWFkLW9ubHkgc29ja2V0IG9wdGlv
biByZXR1cm5zIHRoZQogY3JlZGVudGlhbHMgb2YgdGhlIHBlZXIgcHJvY2VzcyBjb25uZWN0ZWQg
dG8gdGhpcyBzb2NrZXQuCiBUaGUgcmV0dXJuZWQgY3JlZGVudGlhbHMgYXJlIHRob3NlIHRoYXQg
d2VyZSBpbiBlZmZlY3QgYXQgdGhlIHRpbWUKIG9mIHRoZSBjYWxsIHRvCi0uQlIgY29ubmVjdCAo
MikKKy5CUiBjb25uZWN0ICgyKSwKKy5CUiBsaXN0ZW4gKDIpLAogb3IKIC5CUiBzb2NrZXRwYWly
ICgyKS4KIC5JUAotLSAKMi40MS4wCgo=
--000000000000d12e8e060cf4d4a2--


