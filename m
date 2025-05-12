Return-Path: <linux-man+bounces-2907-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A4CAB3ED7
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 19:19:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D3317A6EE6
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 17:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A1C296D0F;
	Mon, 12 May 2025 17:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TH3KmUff"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9DC296153
	for <linux-man@vger.kernel.org>; Mon, 12 May 2025 17:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747070373; cv=none; b=JQakDDapc1j5RVsoT/w0eCvjvwRBQ/af2m0T1AVs3Ujm5Tm652Da3EkDchbeKP4wEhSq4pqIHB7UGafeBFQn5VRMIlLsns5dm32RgVoNJtleDJIjruc0PBpbjBANMGwDeCrP2wghZYN1WccGD+93Woq4Mtn9GHuyKiJvXWQoSpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747070373; c=relaxed/simple;
	bh=RNW2KeimRQOcvFcw/i3cv8RxlurLx/D1s5LYekc162I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a0GLMNfq50K4ygFXSkOL/0Ymyj+PNHJfk9n15ve1bi8HUhNtXAFaj/oKFcg4XLrL33ol80/yvNNNTLxXbVjhXall/nnaVAeteHwje674fTyvSCC4Vys/JR5GqlCM6y2Y15UHUgkmlLaXUL7LeJbFxQCrH/u9yY3rhm8nTlkTBW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TH3KmUff; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747070370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GkyjsEBVXZql//c31Uv3m9eI0pp2by/4V63M4hl5UAI=;
	b=TH3KmUffPov4YjwACiZWg3Tohh7u5ZKLBrORoX5e62gvQ9a0mpiNsPr9VfOcUCznFfl55L
	zMTGYxjs5km+HLBzpApeVUiudJs+CsvXQPR/VYYSHyzeE16ROSs5X6LLttOoGrre1DzJzj
	awz4L4qaN5h6YpP32JWpNS/pinqM4Wo=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-494-4kZw3qq-NgWlV9Va8Tmkvw-1; Mon, 12 May 2025 13:19:28 -0400
X-MC-Unique: 4kZw3qq-NgWlV9Va8Tmkvw-1
X-Mimecast-MFC-AGG-ID: 4kZw3qq-NgWlV9Va8Tmkvw_1747070367
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54e7922a1so1028375985a.2
        for <linux-man@vger.kernel.org>; Mon, 12 May 2025 10:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747070367; x=1747675167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GkyjsEBVXZql//c31Uv3m9eI0pp2by/4V63M4hl5UAI=;
        b=PzVIFJBgUvrZuexyVqtcePp4oOuQTKjcfJtN0WwQJdmy6x+qYkGLCOfWrKM0X3GPYL
         xr/byhehZgQSpquUvx0Ahgyr4y9tObkY84mE179FL6+YPD8NZi/obuc6CW7W7OhrcHGT
         sY3GKW5vyA06NxOVhzEBjgmDOghmk7/UtZnbpXs/YZSzrFuXo+km2YOgLK4ZWJQuE4gv
         L9ULc+/X69wavukNktRRSQnKJlYieEJ1i+3NV91o7fRdwbTIbvl6373aKGedRmLe9Xxn
         CLHqYsp+RJUf99JRL7502tucHxl87LR5pGakmsrnk+MHy/gVT6cpm9gk5Dh77xgxzFY9
         t12Q==
X-Forwarded-Encrypted: i=1; AJvYcCUoI3d6po2ng8jECGhsOEh47dhM6x/btBJuBx/AXYg/XvqMB93JiU4ilrXVwDi6m/m5izBSf+fXNY4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyPY2MQ3DcWY5Rpm3L7/tgcZpdRGcU2RIUXOz8wb8nSawIF5SLv
	nxyElgp4G6Li+Lm9XYkU3NC0IbHdwTHPLcGCkZNofRBmNUzBYiTdcETqXcYg058oLjgR7oZ7M9X
	MqR3mMnb+MggbRX4EZWYYWDrrfB0QrO0hp+NBY5lvAKDceL25lqTus9wEAg==
X-Gm-Gg: ASbGncsLlsmnUyMkkr1LT5W6g3yFT7tpOc4+CftERJU6LUg1Yv/eEIO8xtkOqNIasyP
	iRJQOHdmqjY0Tp8ufg/vGHOEdaLT+tRR6iHSXJH6zXf/WyUK+XWlakmiyaoV1qq3FAhLcQhRX3a
	d/ee+lbaVUevHTZWGdhWOncUmBHdZwtsA64JfNUPdv7jINs93C2PW7GQdEUhfv0dG/l7yrhzFjw
	U4AvmuSI11uimrmrofM1z25mO11JyHdgwwHenHCkZsWCIWgXOkrvg5RjWoi722shP4G/wm3s2S4
X-Received: by 2002:a05:620a:2690:b0:7c5:49e8:993b with SMTP id af79cd13be357-7cd0117903amr2600636885a.56.1747070367622;
        Mon, 12 May 2025 10:19:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhXHfrlA0sTV0PHOWBuw1s2FByKk5Y/Ebo9kg3frdH6FoHXH39u54Ko2H7v00+/RU+D2wJOA==
X-Received: by 2002:a05:620a:2690:b0:7c5:49e8:993b with SMTP id af79cd13be357-7cd0117903amr2600632085a.56.1747070367162;
        Mon, 12 May 2025 10:19:27 -0700 (PDT)
Received: from x1.com ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd00fde7c9sm574237485a.75.2025.05.12.10.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 10:19:26 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Andrea Arcangeli <aarcange@redhat.com>,
	Mike Rapoport <rppt@kernel.org>,
	Axel Rasmussen <axelrasmussen@google.com>,
	Kyle Huey <me@kylehuey.com>,
	linux-mm@kvack.org,
	peterx@redhat.com,
	Robert O'Callahan <robert@ocallahan.org>,
	Suren Baghdasaryan <surenb@google.com>
Subject: [PATCH 1/2] UFFDIO_API.2const: Update userfaultfd handshake and feature probe
Date: Mon, 12 May 2025 13:19:21 -0400
Message-ID: <20250512171922.356408-2-peterx@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512171922.356408-1-peterx@redhat.com>
References: <20250512171922.356408-1-peterx@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There's a confusing paragraph in the man page on two-steps handshake for
userfaultfd UFFDIO_API ioctl.  In reality, after a successful UFFDIO_API
ioctl, the userfaultfd will be locked up on the features and any further
UFFDIO_API on top of an initialized userfaultfd would fail.

Modify the UFFDIO_API(2const) man page to reflect the reality.  Instead,
add a paragraph explaining the right way to probe userfaultfd features.
Add that only after the "Before Linux 4.11" paragraph, as the old kernel
doesn't support any feature anyway.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man/man2const/UFFDIO_API.2const | 43 ++++++++++++++++++---------------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2const
index 54b34a1bc..1c554107a 100644
--- a/man/man2const/UFFDIO_API.2const
+++ b/man/man2const/UFFDIO_API.2const
@@ -42,25 +42,6 @@ fields to bit masks representing all the available features and the generic
 .BR ioctl (2)
 operations available.
 .P
-Since Linux 4.11,
-applications should use the
-.I features
-field to perform a two-step handshake.
-First,
-.B UFFDIO_API
-is called with the
-.I features
-field set to zero.
-The kernel responds by setting all supported feature bits.
-.P
-Applications which do not require any specific features
-can begin using the userfaultfd immediately.
-Applications which do need specific features
-should call
-.B UFFDIO_API
-again with a subset of the reported feature bits set
-to enable those features.
-.P
 Before Linux 4.11, the
 .I features
 field must be initialized to zero before the call to
@@ -70,6 +51,30 @@ and zero (i.e., no feature bits) is placed in the
 field by the kernel upon return from
 .BR ioctl (2).
 .P
+Since Linux 4.11,
+userfaultfd supports features that need to be enabled explicitly.
+To enable any of the features,
+one needs to set the corresponding feature bits in
+.I features
+when issuing the
+.B UFFDIO_API
+ioctl.
+.P
+For historical reasons,
+a temporary userfaultfd is needed to probe
+what userfaultfd features the kernel supports.
+The application needs to create a temporary userfaultfd,
+issue an
+.B UFFDIO_API
+ioctl with
+.I features
+set to 0. After the
+.B UFFDIO_API
+ioctl returns successfully,
+.I features
+should contain all the userfaultfd features that the kernel supports.
+The temporary userfaultfd can be safely closed after the probe.
+.P
 If the application sets unsupported feature bits,
 the kernel will zero out the returned
 .I uffdio_api
-- 
2.49.0


