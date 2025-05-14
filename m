Return-Path: <linux-man+bounces-2922-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57024AB72BE
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 19:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 782D31B650CA
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 17:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30B92820B1;
	Wed, 14 May 2025 17:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RIK7KL/u"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC41280A4B
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 17:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747243602; cv=none; b=myOZ0P9u8OtS2FMApdVyXDw4q1bSgBtS2NRfy2rd71ZFcbC8vLF8yN9IBXLrM7x277tNQaMJwbD7mV0+zP+YEzkKJJlf8pvlP4yKFES9HjrpjKiVQgOT3JBf4J1DTH/CKBQmOez0j8gY1CsczY+ACImH5rRKjA5teST7bMd7/xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747243602; c=relaxed/simple;
	bh=GhhCpnt09wLRxO7IljYoAiRnBeNBDPj44AzlBMpUY+A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PV3hmLuTib7BouCSH7ehszWrew5jra0aUHlu6xGRzDewD5E4djkDifgibKv2OTMZrQH9Ik87XGVg+w1psYtimaEUXDYjGZ4UY9cB1rxG1zO/JjBCbpICfZFSxY+BpC+Fhg8TfSFOXasF5zvAeUI2Y30+AxF2pngnBZoWMZbLAjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RIK7KL/u; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747243598;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UUvm/u3j4WG4wsWjGgjYX26cY2cuBpZEhtt9a/KRMUQ=;
	b=RIK7KL/uTbQhZAJmdIoiBms2mA0u0k/mbRDvQcRWVR1LhLHHtr5VUCGgMYHWI1mXc+Mjfo
	3Cp6XW7FsDerCCnKkJ09whxKccg3vjSWznzEpm6bPN0acvfUhOa378VuXh+lSgs42n6I0n
	b55FFzQ+k1Vqp2g1FPz9FN5DCAtBOU4=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-o3ZVQKdXOkaDnN0TAJY0wg-1; Wed, 14 May 2025 13:26:37 -0400
X-MC-Unique: o3ZVQKdXOkaDnN0TAJY0wg-1
X-Mimecast-MFC-AGG-ID: o3ZVQKdXOkaDnN0TAJY0wg_1747243596
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f6eba61cbbso2207876d6.0
        for <linux-man@vger.kernel.org>; Wed, 14 May 2025 10:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747243596; x=1747848396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UUvm/u3j4WG4wsWjGgjYX26cY2cuBpZEhtt9a/KRMUQ=;
        b=WRxFsvRb10HkSFQ88uWU2L4ko2s+pAa2mRR1tV6dvCSJoF8N+YqsT4LmRHA8ZqyaoL
         ORM+y3Ukt3CqC6njjdi5rEYoxNauqK0lnsbk43Oha+3p0UIv7d687NwY6PZ1OJWbyisE
         JJnZblaV/WzgXXUl832pXQglVIBV4/14NN/5H3SbqJKs3570tr9AWpFNw9ZUqx5FVqHz
         pTvUzZ4lJu0QeLWI/HYPiBKoiggpHHPUgKoMsnLdS7WkO93mqw9xbdRFICpV7JPRRxgQ
         tmsUSofYKvmM2e9tI7H63HyEgR5V1X3/17u4Q//Zz5kw5cJJTLTRJFni3f39BpjNvpcF
         1qZA==
X-Forwarded-Encrypted: i=1; AJvYcCUpDqDA6fvVN28ZBLm12UnDx9J4GDrWkhAQ2jA3s2i84VYN533REEqyDjR4ltC2cgt40iydjSC0HRk=@vger.kernel.org
X-Gm-Message-State: AOJu0YzjaV5E0bFUhp97YDjXeE//ZkHvEcyCktsgfTD1Z6OpbppPr8gQ
	VTdnsAkNUykZUCycWLe5ReZPgmm8NPculV4nklVq+09Db4uXZCRVqxrmhu1AUjYF6rUgqMxhQv3
	+6HA2LGdZqcDhh9UV3PGbMmqVjZ8fUpjtKMWOPmcGrtpt0q5odvmXJbuGmA==
X-Gm-Gg: ASbGncssvsura1m6PljVTe8aJ7TIwvXBOizJ+WULYuZLOha0NWTtFIXRN0wypjp13Vd
	E99LIzVcgjxrKv/gScNGszxx3oGGxMpPvyCGnU6uXlde7GtOpNDl/bTZikW9jcdcsUPla1F5Qwa
	2Q8CCWbfUNmpHXvhDN2t7tZk2KApZ2AqpCEZd4TnDXT3qJlIPK9LTi00ftB4Z3x8kGoPQIdpd8o
	aIOjeGXLGqtr0Flh0qaqYT94F9k2vVIFcrkkfFXe3rMvbYjuUtIfAjJLSJqTv5Y1+nDJ5wZ1UYx
X-Received: by 2002:ad4:5d63:0:b0:6e8:f949:38c6 with SMTP id 6a1803df08f44-6f896ea8adamr61212546d6.33.1747243596179;
        Wed, 14 May 2025 10:26:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4VMBew+JPLH9FJWsO595OxibhOLiZJaysAzZGkfUGJuxyv2GUW6YNb7ys4nHClDclSmtNPg==
X-Received: by 2002:ad4:5d63:0:b0:6e8:f949:38c6 with SMTP id 6a1803df08f44-6f896ea8adamr61212246d6.33.1747243595805;
        Wed, 14 May 2025 10:26:35 -0700 (PDT)
Received: from x1.com ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f6e39f4795sm83590536d6.30.2025.05.14.10.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 10:26:35 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	Andrea Arcangeli <aarcange@redhat.com>,
	Kyle Huey <me@kylehuey.com>,
	Robert O'Callahan <robert@ocallahan.org>,
	peterx@redhat.com,
	Mike Rapoport <rppt@kernel.org>,
	Suren Baghdasaryan <surenb@google.com>,
	Axel Rasmussen <axelrasmussen@google.com>,
	Kyle Huey <khuey@kylehuey.com>
Subject: [PATCH v2 1/2] UFFDIO_API.2const: Update userfaultfd handshake and feature probe
Date: Wed, 14 May 2025 13:26:29 -0400
Message-ID: <20250514172630.569788-2-peterx@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250514172630.569788-1-peterx@redhat.com>
References: <20250514172630.569788-1-peterx@redhat.com>
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

Fixes: a252b3345 ("ioctl_userfaultfd.2: Describe two-step feature handshake")
Reviewed-by: Kyle Huey <khuey@kylehuey.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man/man2const/UFFDIO_API.2const | 44 +++++++++++++++++++--------------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2const
index 54b34a1bc..aca27dc5c 100644
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
@@ -70,6 +51,31 @@ and zero (i.e., no feature bits) is placed in the
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
+set to zero.
+After the
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


