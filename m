Return-Path: <linux-man+bounces-2908-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB80AB3ED9
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 19:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CC8B8647FC
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 17:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CD1296D1D;
	Mon, 12 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KOXWbERp"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0DD296153
	for <linux-man@vger.kernel.org>; Mon, 12 May 2025 17:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747070393; cv=none; b=NTrNAck+MjzFiYEckWBeApQUc+sZFQSNojOKWEcOr5pkaln3/Odyz0dWknez1KMySnD+H9AQCDb0RdFsnSvGPBpMuTwghWK1suNL1R5YH8bAitZny9RIXvCzekaOYkKYss3ShPEl2dF1NaRTfZGLqGmcVcypVkLlqHgGa+BCSvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747070393; c=relaxed/simple;
	bh=Jq6+zTmMIhbJtMdND1aZOGEUnT/8ETS5iQtBBhAPFRM=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=USVzqYSB57KU1TMnvBmDsCSFRG+mHK2w9KoVkJ2+dcdtv44HK07tvt2E8xKWnnYnsRkZ/oTTzr6JM37nqSD/Oz64YC3Enns7s/dy5X2yKViy9ilKXH+3J16xsqhv2K/miRZo1iy0F5mDBToeY406p5dL50vOQ43U4ab9gfuie5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KOXWbERp; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747070391;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hc4wc6R5tCq7zzSrnONS3LsbZ4BpArkF0zZej/1ubvw=;
	b=KOXWbERp1396/QvL4NboaLPLXbo76RXnKTBLuyQuEQ56TianWiZz9JHwFJUnVoaSmlEbII
	TxhGYjYKC+y3sck3r26ULda3XRTpOVDr9nb0HqAdfgPKuq174hAFNL9Gtm3+p01MrbkURQ
	kOruJePYjdUCuLHSDOSUyIByreVysWc=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-b1uSXo2lM0qrw4AXbXa1ng-1; Mon, 12 May 2025 13:19:50 -0400
X-MC-Unique: b1uSXo2lM0qrw4AXbXa1ng-1
X-Mimecast-MFC-AGG-ID: b1uSXo2lM0qrw4AXbXa1ng_1747070389
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c9255d5e8cso863318885a.1
        for <linux-man@vger.kernel.org>; Mon, 12 May 2025 10:19:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747070388; x=1747675188;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hc4wc6R5tCq7zzSrnONS3LsbZ4BpArkF0zZej/1ubvw=;
        b=FJvB8g/sFnYuKspD1bBbX8w4Y0ofbKXwI1aoCb8ksAbT1VSuumDXG3nSqKsCb3On8x
         6i9xBO8f3QOk1Z+j45h6g5VIJYmhrdYgh2Ew+RIBj3GuCAiIC8yU0DjVIsIs/zrViyjQ
         NjMsLIiu2vkhLmLj4xWe3rcgzQb3Jw8KAVb/xkUBFmt3JxvE+9lFcejJhmA45TNs0Bqi
         4echMSi4eQelIGMMbU4P8K7SK7UU15lzwnTxp4VoT9QFzJiy61H3l8/c//qYTd0h6psK
         Ovs9fJ58EWP2tVtK0ibNHO5V3X5XMTgGQLtJN28X1nx2jtae14eeaaLlbpAJFceQDngQ
         I0EQ==
X-Forwarded-Encrypted: i=1; AJvYcCUffLnnjLbQKJwjXMNkDAO0gfqKEsVSi/M2PIC5aV6XkkR7FKJ5aE7aHIfH90vc0IMvK6yBikWxuvw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsc8r6Yd4EQy5//0UyP4rz61nqK/kjcF/ZX1z6UYv4MajfVaC5
	goue67lc3hbymNuXG6PnXjnABtAMwdKiYCMi3t+5Ya8rOLqV5YfHpKPoOTpGVW/rMSqS1Igfodp
	MjEbg5J1ckZ5a1Vax4q1C+jy4kcyphK/fD5HafQ5Ki9wsC2U/HKLsVbWQt/J+0SLT2w==
X-Gm-Gg: ASbGncv1sy7QMDJHPHJq/2qwEjXSi4oIo87+Pyt4aoxP+4s2rhM3cGYAYbDFO911GEv
	AeAIJCtx4pQuWueGY/gA8bPcgfworUkNcDswiTQN5uE+SJfueaMlWLowj68XJT8vVE5Zi4rUjVH
	rPjigqsSOYFVTMr7XL0A0MfOYwgzqhGKp6JUQzOvj1Sn4p8evkP1DdrpMCV2AguoVrrcKap7W9o
	KiFUjP/Bwh+xNfEeNe3mRKZyC1A62paZ20qIjbGdYgxozAdh5sdzNVOv4tgLFhvZQxP7ltqe5fi
X-Received: by 2002:ac8:5704:0:b0:48f:5a65:b98f with SMTP id d75a77b69052e-49452742c80mr240272521cf.19.1747070377471;
        Mon, 12 May 2025 10:19:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl9jzo5zoXQr1y1xkM8mBx7JmDU17IT0zbHtFKnAy9/wCXiV9Vo2yKvBGoU6lfRFASKBu7iA==
X-Received: by 2002:a05:620a:2b99:b0:7c9:2537:be48 with SMTP id af79cd13be357-7cd01105576mr2465872785a.24.1747070365989;
        Mon, 12 May 2025 10:19:25 -0700 (PDT)
Received: from x1.com ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd00fde7c9sm574237485a.75.2025.05.12.10.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 10:19:25 -0700 (PDT)
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
Subject: [PATCH 0/2] UFFDIO_API.2const: Two man page updates
Date: Mon, 12 May 2025 13:19:20 -0400
Message-ID: <20250512171922.356408-1-peterx@redhat.com>
X-Mailer: git-send-email 2.49.0
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The first patch updates the page on two-steps handshake, removing the
misleading paragraph and replacing it with a paragraph explaining the
correct way to probe the userfaultfd features.

The second patch is a small touch up on the same man page that misses the
newly added UFFDIO_MOVE feature.

Thanks,

Peter Xu (2):
  UFFDIO_API.2const: Update userfaultfd handshake and feature probe
  UFFDIO_API.2const: Add an entry for UFFDIO_MOVE

 man/man2const/UFFDIO_API.2const | 49 ++++++++++++++++++++-------------
 1 file changed, 30 insertions(+), 19 deletions(-)

-- 
2.49.0


