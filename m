Return-Path: <linux-man+bounces-2921-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DF6AB72BB
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 19:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1F8F862D89
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 17:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7EE28151B;
	Wed, 14 May 2025 17:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ChVVsHZI"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8447328032A
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 17:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747243602; cv=none; b=WLiddmRKO3WQZBgXyP8jIiLR+Io2eYU7J667Tgo0pUqaefRg9Yxq/Lq0SdVnkZmCe0A8EAsT66Y24inGJyQSC8ZQlH0TjG0N2WLZnleBbySS685OrGt4N9J6CAFuxrb1pgNikz0jWPPZQX3LdVTnV4e4wAQeNrwuckD5OKVCSOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747243602; c=relaxed/simple;
	bh=1yRC1XwpYKzFcM/zrcrcVhqTKiQ7uUmPQ8b9lkxNl1E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N97AMtgxxf00VixhKo5HXguOs1G7SCOu/CnyogMKzbdug587GrV5CkAZKXSNqRSgnbhf7x+gyFJPBqaqC0lHNKmCtAbjDFxeT1t4DWGguCsYmQZoL3VZslgoahSaUyaSr51oRxyGv/MtDJ8QbvKkTNRENrTzcCRZnzBjWVok7B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ChVVsHZI; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747243599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WTtJTQLrX3gO9Dfm9nEWJ3K40sqpMSzaDV8/6FruRKM=;
	b=ChVVsHZIn8Cr6JkfSufsXzYtelyy4b+wfBf9UTcqL2UslzEW7ZJfmbNkxZLGMZUSqm7zAp
	LkYpw8/2LBVasRyC9/eJbci+KXgvuz+LJ9yaGvOZW9lEHPpU3m9vooo15j738/TdhbQ9jX
	MvkkEhyRr4nABDvS2f3KQcJtPYvrK50=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-YfM4x5c1NfejJ_c5qSnG9A-1; Wed, 14 May 2025 13:26:38 -0400
X-MC-Unique: YfM4x5c1NfejJ_c5qSnG9A-1
X-Mimecast-MFC-AGG-ID: YfM4x5c1NfejJ_c5qSnG9A_1747243598
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f54e2cb26aso1305966d6.2
        for <linux-man@vger.kernel.org>; Wed, 14 May 2025 10:26:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747243597; x=1747848397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTtJTQLrX3gO9Dfm9nEWJ3K40sqpMSzaDV8/6FruRKM=;
        b=fDT72NfipPmeLkmEMbPEb8A0MA+OpFLr2+Rh8fTmll6XT/GpYa8b8hs6loRgIT4YV1
         RwInpwRA0/PI6vfNB0PuwBdi6cBW5JKeVxmkuxwsUII/faiqjZo+NtSK+GPPDITreY06
         H0lnGMDRUkcjL472bobt2YuOQXo3kkq4TylJ7f6o5jcb37IYbIOUhj3k3LZ6mk15jFL/
         mR0L8PF5KPO64G3/8lN0Bcju4jwAEZgmvhwA+itK7GzP1Qy0U3iIIQ4TCXqh9VmbORUk
         ruz4A+nOdFxK8Dy8IH5C1Y/Avfw09Czn4+Ho+mSmCymSezw7OamT9wsEz2onPk9FFy7C
         p9ow==
X-Forwarded-Encrypted: i=1; AJvYcCXPaVs0yipHWrgQysYc1GRlu6dQ/AayY+BYiV396MclyGbJMMUnqhss5KZSSYBWMHR0zUz3GZj1/RU=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxhq4DHbCBrI7F29G1IL9Z/UJ1RbYJz/wE8GvQACV6aoUEGCXe
	74zUz5eRizUXTcjXoupysUv8A0kU+7NO4pCSn6Lw0H8Bc+YLsfpMlMy2kOozZfzn5X/U/b+U/7x
	UAGwo6LN411zqhmgT0uU+TcBhzKLqW7A6x2na7QMR7Q5Kzfowwfcbh8Y8X1+brjyqiA==
X-Gm-Gg: ASbGncsrSMwYMqECwyxX+67hohhMIUSFWbTKpf3uhm2gZZZgeGdmFMtm1Bp/ygCQbMs
	XRyY2d2zs5fxuH4nCopRdWcPZohMCfUUjm3rSFeiOiFRhBP18EaNNoHYDB8AHaIjdP26tUn36IN
	Vt8ePazKQ/E2MOKqWJLd9dAblyTndGiGNLXVn+KLvGDEjpOJ7qaR2gyJHkE5zgxuKjeDn9qM2sr
	eCwOBhE2JcLwH4IpH5eKgDGrsghxPNPbQZ2ENQSNZhfiIq3EmWsjQy1CusB63s/kRp6d6ZRP4ck
X-Received: by 2002:a05:6214:2525:b0:6ed:15ce:e33e with SMTP id 6a1803df08f44-6f896e373c0mr69565486d6.27.1747243597636;
        Wed, 14 May 2025 10:26:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFo+aoJaRipKfbPRvzEAPWK/mJOEEvFX4RboJQouXsr67VEYSkJ4Jcr3wp/VF7VWUSVEMZUzw==
X-Received: by 2002:a05:6214:2525:b0:6ed:15ce:e33e with SMTP id 6a1803df08f44-6f896e373c0mr69565086d6.27.1747243597244;
        Wed, 14 May 2025 10:26:37 -0700 (PDT)
Received: from x1.com ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f6e39f4795sm83590536d6.30.2025.05.14.10.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 10:26:36 -0700 (PDT)
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
	Axel Rasmussen <axelrasmussen@google.com>
Subject: [PATCH v2 2/2] UFFDIO_API.2const: Add an entry for UFFDIO_FEATURE_MOVE
Date: Wed, 14 May 2025 13:26:30 -0400
Message-ID: <20250514172630.569788-3-peterx@redhat.com>
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

Add the entry for UFFDIO_MOVE ioctl in UFFDIO_API man page.

Fixes: d7dec35a3b19 ("man/man2/ioctl_userfaultfd.2, man/man2const/UFFDIO_MOVE.2const: Document UFFDIO_MOVE")
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man/man2const/UFFDIO_API.2const | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2const
index aca27dc5c..682df4316 100644
--- a/man/man2const/UFFDIO_API.2const
+++ b/man/man2const/UFFDIO_API.2const
@@ -205,6 +205,12 @@ ioctl.
 If this feature bit is set,
 the write protection faults would be asynchronously resolved
 by the kernel.
+.TP
+.BR UFFD_FEATURE_MOVE " (since Linux 6.8)"
+If this feature bit is set,
+the kernel supports resolving faults with the
+.B UFFDIO_MOVE
+ioctl.
 .P
 The returned
 .I argp->ioctls
-- 
2.49.0


