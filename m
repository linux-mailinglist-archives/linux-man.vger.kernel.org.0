Return-Path: <linux-man+bounces-5464-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMksJNvi/GmGVAAAu9opvQ
	(envelope-from <linux-man+bounces-5464-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 21:07:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 386D74EDB99
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 21:07:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 31AD93005AB3
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 19:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FCC63B19DC;
	Thu,  7 May 2026 19:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BjWOvrwB";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="P29axd4d"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D969631B114
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 19:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778180825; cv=none; b=OmhFz2NwSTrHvCTpL+RkDCk+RILcvnLf2P7RSGz+gBP37BkRJBIHtSeO7xrwN3ctxoQsqNi/VVlWsa0/WpEwdWWDsA+T00+NQBe+17ZKjeWOjJfFr4nmG2zF6exoJp0Fqcgv6iLIN9wzpTFuklxe0jm8EXO7CxYnm8Jd2ZzTBVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778180825; c=relaxed/simple;
	bh=tKlgOyuB4HFuC5Jt+2GiGEtLaQr6uN5hSxj1LlTBzd0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kl3/xO4W7EwJL+xU4ATrOPf1+jkAwQobYMu3JXQmVaBwxjux5iIuZcVESLB7E4Ddh6jHx75Z3ShIP/l30OWkPQofQZZ+3cGFOAdjrow6qP7kuQpqetzcH5w1iLAJhOaxC09ZEvR2VOkwxVz9RA7eDYTHA8/JGAd5ls5WXwhlf+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BjWOvrwB; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=P29axd4d; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778180822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nQ3HWwcTVuF6ZRjW/Oo5gK0MwdJAmpQsyWGmdU443jY=;
	b=BjWOvrwBBDolLK3+q7Eisj5+57/TSbW2DineGv6fIpfhS19nOZjLN1Kiyyy8/pLBFHPJad
	ywPg/Lti6ILLAo+KZBjuRpJsl9QlQiLwY8hUBxompZ2WZCjFrsoO9JyBcHIfqgLYGUXexv
	jmmUg/Gq1kvBAhviE2tiBnF0LiI4hw4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-633-smj3SOgZM6qgixQwWuoq5A-1; Thu, 07 May 2026 15:07:01 -0400
X-MC-Unique: smj3SOgZM6qgixQwWuoq5A-1
X-Mimecast-MFC-AGG-ID: smj3SOgZM6qgixQwWuoq5A_1778180821
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-902e74da582so335316985a.1
        for <linux-man@vger.kernel.org>; Thu, 07 May 2026 12:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1778180821; x=1778785621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nQ3HWwcTVuF6ZRjW/Oo5gK0MwdJAmpQsyWGmdU443jY=;
        b=P29axd4dC8r4rS3qInGrE7s8z+r/ryy1Cz6p7St2A58AyXGy46/8WaSuhLDu8jRwr3
         Qz/qtdWjFvz4esK3i035BiZrgjS7s0pTDOj+kRHP38veVI+68aT40P9YC3Wa4YXs0sKA
         8J60gHHTYJrdTflYMjEYSSwa/VLCt8IZKx3+Igq+WtYsh2q7mTZ/lPfYDI5wc4KDT6U5
         MSp9KD9IEv2zUWHd2jgi6w749au4RC65QWBM2Zj8YYID7WEl8MmBQoPjtcWlcmus9Yjq
         GujguavIGmAZAJ06ITWBROvpT0uC9dD6uO859x5meaxqA0k+PIhhtYYrOVAL2OYhrdcr
         +bfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778180821; x=1778785621;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQ3HWwcTVuF6ZRjW/Oo5gK0MwdJAmpQsyWGmdU443jY=;
        b=CZgGSAxAEZuWqJd0VZVbpliv+IsDvZT/Ys4PDqtrKKDjFpvwEjj+1FMmMN0sbLS+4R
         G14DhqoEgKoFRv9MRkAFxPSk5zKOs5rBA+cm1uaHbrjTtkBgKISvMUCFpOZmXpi9snFe
         +6cd5Hb9CjtWbkpQNMqpL+K8pUyM3lN9DWCTzYj+Dle8Ek9ZXJ4vu2Bn6ZUFwq93eg2S
         XhvJGsP4IQ/ZdCJZxq1rfd5kU96coZAvy6AkYKQ3vN0TqQr6pQiP0WUCVrVXeoK3W5C3
         gbGmf++m8i9H/VpalLNNuofl1fMWxr4gl55mbIg7gYoZGT2Id7RU9Dr/GeMA421RWgbm
         xWLw==
X-Gm-Message-State: AOJu0YzW6ML6p/KlwJIw3mtll792h8Vo+kFo0W2iMjsMBxWv9wQ/9ZYH
	eY2ApU65GaPkHxbVNASkWg48y8nZ20KumN39TrRqx6Qgw+gW9dWw2xTSbCa5P4Beo8wqPRtkEpR
	HDAFEkRzoP5WuhWrR6+s4XO29Fdfk7UOu4LqyuwyH67610m3iEITvNAI8196j4Q==
X-Gm-Gg: AeBDievNEHApF5TpNS6OgbHkCqx0xAp0Fc6y/XcfMq+XCy3DKqZm9/HJegZSelBUVv0
	/fm4+twgEWkeAJtXEB2rJ12QyqLLMS/lRyfd5bvEdu8wNA0VsC5gNuxCPdGNNlZupQcT4/lqmVs
	1MWqaaJvyM/GlWaGQP4RqUAQSQxhI7NNzN1u/+gHLIR6g6G+Hf1QUKAURBjX4y6VaPm5/mztTCp
	0FHhkkrwnrhti62MrpuBVURPkVRd3c3craQ7RQk+Gb84ek2TxkaBLAAX8u0t6TZzx23WGEtJMYl
	RjPbxmkSSEM4tAcIG4iVVSLBue4nWIMZeplnmnV8wUTHz+llQxRBNe/itE7c8q2DTDezQA5ZrWM
	UXI4h2LXl/7Fiy8/8+tSe2N3Xo+tJ7s1YSTlGSTBFToqLfJWdPiaT5w==
X-Received: by 2002:a05:620a:7017:b0:8cd:b52c:598f with SMTP id af79cd13be357-904d70c2b2fmr1358824085a.59.1778180821079;
        Thu, 07 May 2026 12:07:01 -0700 (PDT)
X-Received: by 2002:a05:620a:7017:b0:8cd:b52c:598f with SMTP id af79cd13be357-904d70c2b2fmr1358817685a.59.1778180820600;
        Thu, 07 May 2026 12:07:00 -0700 (PDT)
Received: from pfrankli-thinkpadp16vgen1.rmtusma.csb ([2601:189:4702:48e0:7c65:14b:9590:9d04])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-904f810e354sm570733185a.45.2026.05.07.12.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 12:07:00 -0700 (PDT)
From: Patsy Griffin <patsy@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Carlos O'Donell <carlos@redhat.com>,
	Patsy Griffin <patsy@redhat.com>
Subject: [PATCH 1/2] man/man7/suffixes.7: Add .zst suffix
Date: Thu,  7 May 2026 15:05:07 -0400
Message-ID: <20260507190508.386186-1-patsy@redhat.com>
X-Mailer: git-send-email 2.51.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 386D74EDB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5464-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[patsy@redhat.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Signed-off-by: Patsy Griffin <patsy@redhat.com>
---
 man/man7/suffixes.7 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
index e21ac3ab8..3e17afc77 100644
--- a/man/man7/suffixes.7
+++ b/man/man7/suffixes.7
@@ -255,6 +255,11 @@ File compressed using
 T}
 \&.zip	\f[B]zip\f[](1) archive
 \&.zoo	\f[B]zoo\f[](1) archive
+\&.zst	T{
+File compressed using
+.BR zstd (1)
+format
+T}
 \&\[ti]	Emacs or \f[B]patch\f[](1) backup file
 \&rc	startup (`run control') file, e.g., \f[I].newsrc\f[]
 .TE
-- 
2.51.1


