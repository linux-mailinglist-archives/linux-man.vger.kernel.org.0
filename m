Return-Path: <linux-man+bounces-2920-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 422AAAB72B8
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 19:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF3184A85E1
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 17:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3273927F73A;
	Wed, 14 May 2025 17:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ePgOQdvH"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBC32BAF4
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 17:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747243599; cv=none; b=KP0pcIy3Kye18doIVIkgww8xy61A+Bq12m1QzLsl2oBX8Y/tANi/IylzpHjNJtdXq6Odwxi852gwllK5wogixPSLNKjjugZWqYmis5zxMb8PD9aShX7hee9+E4tbR4ehhJx76lMNb6NMFMFxDV0bdvt9KZEoSGljntafOfSQEIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747243599; c=relaxed/simple;
	bh=Bu8XXMP06zFUuHV4nWypFECt9tmJZy5JGfBfFIPcbIg=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=luUpDHe4X+FeEeWq++ZVzoW82WGcq5jkvSchaZQEpsS3xr0wSoibDqwh0JWt5Dfrb0sn2QrCf0hL3nyWlgcNh6ms78DG85zMNXWBRIwS57Y3BHJDrBiZuLt0n+RUgMRkb/Pm32TySlH7Y75zw/qh33BRnSjn5cducqeqXnG/myE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ePgOQdvH; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747243596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TlxDMys+Q8gzQ2USC907k8LUWQJPqtrQGgMzbGREC5E=;
	b=ePgOQdvH4W16O6RQ4fbzVyG6QAQwFvy8A4+4/oOG1AlPuGpRT8SPe0l0EsD1Hr5T+aMWOS
	nm277v7rP58hdFRjsbQ4Fy0KhaFregdTTrhUscdMBjsbwQLtGZ0fCwTFKTyPzJYuLg2tY+
	KlQRRyZAPgfk/97KNoxPV1p4n5qaD88=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-643-xUNXmzESNOW0-iRipFFJmQ-1; Wed, 14 May 2025 13:26:35 -0400
X-MC-Unique: xUNXmzESNOW0-iRipFFJmQ-1
X-Mimecast-MFC-AGG-ID: xUNXmzESNOW0-iRipFFJmQ_1747243594
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f6f2c41eddso1621806d6.2
        for <linux-man@vger.kernel.org>; Wed, 14 May 2025 10:26:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747243594; x=1747848394;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TlxDMys+Q8gzQ2USC907k8LUWQJPqtrQGgMzbGREC5E=;
        b=tjf1ivQqDHMGNo6FPnewgB/AM68BIu/+19kCkUxeT+gigKeiCleYrPkQhtx1Ci+uSi
         0+M3QY3JGb41VXGPp6yGfn6M+p/jSPiEbrOF7TDCjsGPDsEY1N3lWZYHd6H4x8LejDTs
         KewCTFfezoj7vDMVtSXjotA7VZW/FHCyQS/oLxi4pLYzrB5Mu3kdOvP0DeS6rRsdOkEW
         6PWjr6ljuTqqDwQfbpj8v7v6JWeYvwkmzdyfnI+zqEzh2FqP0bJtzeEMSPSj2mOQ8Vwy
         lAaMhFSqDH/RfZszRGjFQ+xBhzRVzCZJUg57WgqG5hv5L1gExRhMgYJeYF0u8bUYEN0q
         OPeA==
X-Forwarded-Encrypted: i=1; AJvYcCURA3dnsoTz4K0rcOKWqiWqnNtFLvnd1MHK3MTSjj4LIpJHmF2NAk8W1bTS/NkC6q+IffaW6bSB9zs=@vger.kernel.org
X-Gm-Message-State: AOJu0YxVJbl/KOHgX4iDG1udxjnkFgf/ZEEvhGmXqFWM5kKiTY+I7BDx
	b0FxWOIFJ3jQrCL99IyCpzpqqmy3zt1r67R5IouUf7RmK7pXS2OHl9CJDnsVGC433dg3C3i5SWJ
	xFxf5GwDX7q0S9OCMknM85OkaRDVJ3pOq4XWmvYYjdZy77BpOxhQU7gU2RA==
X-Gm-Gg: ASbGncuaoOi6K+q4ZXHFy0KqUYc0nIACBaZGa0vdrfXLnZXQY+DFeZlOjXPAlRYyiCf
	bR6Jf9+7WDOhY78SMz5oIiTmej5lUTLbCyEI1VKZctHf1oafz1WIuknt9Iol4fgcQ1NBQOKA+7i
	uNgIZfhn2aWYfKsPOEcYtYtMkgTOmNyDoPZZyc4TQUh94byTfj9nHx4GVGuXZrW48pVyrVmvqUM
	8dyOlnYLZDh+Bs9Q1axoEGDMtlhnr+3gXCQS74exnLw376VUZAwnc5r4fjQ63nz/sLLTD1PyrID
X-Received: by 2002:a05:6214:529a:b0:6e6:5f28:9874 with SMTP id 6a1803df08f44-6f896e294damr64744476d6.2.1747243594676;
        Wed, 14 May 2025 10:26:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtnhZ9K5+3H5YeJYHWajNmWT8P6hPhREtsby9lgX8j6TSyQTYRFFkO6mevKkgRdRmqkbv/YQ==
X-Received: by 2002:a05:6214:529a:b0:6e6:5f28:9874 with SMTP id 6a1803df08f44-6f896e294damr64744136d6.2.1747243594366;
        Wed, 14 May 2025 10:26:34 -0700 (PDT)
Received: from x1.com ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f6e39f4795sm83590536d6.30.2025.05.14.10.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 10:26:33 -0700 (PDT)
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
Subject: [PATCH v2 0/2] UFFDIO_API.2const: Two man page updates
Date: Wed, 14 May 2025 13:26:28 -0400
Message-ID: <20250514172630.569788-1-peterx@redhat.com>
X-Mailer: git-send-email 2.49.0
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

v2:
- Added tags
- One fix on semantic newlines [Alejandro]
- Replace "0" with "zero" [Alejandro]
- Added Fixes for both commits [Alejandro]
- Renamed the subject of patch 2 to contain UFFD_FEATURE_MOVE [Alejandro]

The first patch updates the page on two-steps handshake, removing the
misleading paragraph and replacing it with a paragraph explaining the
correct way to probe the userfaultfd features.

The second patch is a small touch up on the same man page that misses the
newly added UFFDIO_MOVE feature.

Thanks,

Peter Xu (2):
  UFFDIO_API.2const: Update userfaultfd handshake and feature probe
  UFFDIO_API.2const: Add an entry for UFFDIO_FEATURE_MOVE

 man/man2const/UFFDIO_API.2const | 50 ++++++++++++++++++++-------------
 1 file changed, 31 insertions(+), 19 deletions(-)

-- 
2.49.0


