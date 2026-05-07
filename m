Return-Path: <linux-man+bounces-5465-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOCaKuLi/GmGVAAAu9opvQ
	(envelope-from <linux-man+bounces-5465-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 21:07:14 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7664EDBA0
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 21:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76EF53031027
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 19:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C276E3B19DC;
	Thu,  7 May 2026 19:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YiuPuCpA";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="fiQej3aq"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6163731B114
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 19:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778180831; cv=none; b=fhrFjZXv0ljBSoQJ3cghNj4+EJApccg0soZ7hipLp7/Kxhlv/5FEYPJimpPoyODuddc/ewf74no0lQx0f8gRWQXoOQ9p0VEMTe7ONM4M4Da1kBeDZAd2dDdHfohnfZQq6pwKzTkjwlIPnPLrzvWi5FkvfUYtNRnwsMzGZKi6QJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778180831; c=relaxed/simple;
	bh=fWihtGxWjQA9BwUVZo6NxYb0aMWLXBAgp60Za2orBAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n5zNLRqhfNsh4jHOv098bEAu580hB2m3NVVfE5tIFV4i5eGIsyh3jgKI0TkZ+ZQfO7oZjfKoenmF0UwmfWQ61YN4V8f2W46TKOJ9YMX8yqusOABetS2aMc+tvEKWQWwrugb7Xk7hpFQXhqdqdpZ8z709FMXR47O28/A4jwhO4m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YiuPuCpA; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=fiQej3aq; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778180829;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=60bbLkAt7747Xx++QlO8Ex8jw2Co0MnosFpKElBjt9Y=;
	b=YiuPuCpAG8FJI8LtFR1hLhyux7CJESQpdDzCWSWA+oCH6DuOqD51lJo7iB8W5NbeZfulAi
	D4sQmvdtLsHIIqAl8Segl9JkItOimP8c/gEbkfC4jRoCs97Mb8akwYo8vDAMzYHxllKH5O
	6jjO61EeOk4/xV9KI76WjZ6gYKcDfhE=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-33-0HxbU9zdObW4QZ39JzmwMQ-1; Thu, 07 May 2026 15:07:06 -0400
X-MC-Unique: 0HxbU9zdObW4QZ39JzmwMQ-1
X-Mimecast-MFC-AGG-ID: 0HxbU9zdObW4QZ39JzmwMQ_1778180826
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89502dfd7b4so21368116d6.1
        for <linux-man@vger.kernel.org>; Thu, 07 May 2026 12:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1778180826; x=1778785626; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60bbLkAt7747Xx++QlO8Ex8jw2Co0MnosFpKElBjt9Y=;
        b=fiQej3aquHVi+llB3y8QgIlU6k1VNYot2wCaXRZcxGa2ST8iiM1Ap6dUvvPPzGkvhN
         Wzv/qMgPzFPB/z2YKUfq0ujVSj+9zi9Hvwt1ohXfB49fvJJbfhkG5p8oO9cqrlHyxacn
         xUgs02m/e4Eq5hR5YgRiUWz6Z90eG7a5vAsJsUHsnoYnG/JVKeT7tp8w2RAW71MwYtoJ
         2LB40JCtXMM3p36vo1hls1xeegRkqzHnonuFaB344hPrXvK3v0Oo92UJAXKnBeRrtfu2
         xRrAg+NoOcUh1qBNzfrYaOcjSgMvsgjYvup1eshYSamSyNrft6l2+2SQgCACFTPjcF1h
         /mbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778180826; x=1778785626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=60bbLkAt7747Xx++QlO8Ex8jw2Co0MnosFpKElBjt9Y=;
        b=k2lPnKPn4wsAgLAXngosPvaluJLCYSg7WIU5jdHE9mbckCkGtRh7tm7Pu0Nam6ir1F
         aGWXP5DrZ55NXvrzj+QokhQ0rx6wyR7JkrVX45y4rLcMKJnrDCAE3mLcSk97OwzTZzQK
         ezAw9W/3w/bKH4sa+N6E3Q6Wwci8LhZTVNdaTZ5T/C+Zp0jmaeedkF/i0KZwsMue6P6q
         oUFB4L6kcAwslx5EtDhs/So9k71awN6Fz167z81d3P5WiRXqttxxdSM8TaWZ8MDgOgd6
         cG3kh2SmO+wtQ4c+k7Eo7gdEtYwRKGKmVcFfkoRZnG4vNl3UmwA9jFwOdFKSyNMst2J+
         ZliA==
X-Gm-Message-State: AOJu0YxbeNLuBVO5sk+6juYxMudIo5dg3tPc4pJCxtpjVBTko0z9HGQ1
	VWWk53hTxPQ98D91LS5MtaDs8ZSs1NG3b8Q6oFMtU45Uv2xYQ43sbCG52JrKu+l9DKUG10QtK0C
	Z4EY6B0gMeEhm+n76Dl94nuaXtGYXjpBE6y8zy9S0p+tQ425sM0Fr3KjFout+Dw==
X-Gm-Gg: AeBDiethOJICslq+7sbu60rQ7/bB4CWzNWPgtcpRV4xbfuO1Yvj2eHvigqUrPsc8YNf
	+aPMKj4dkpiD/2v/05CMiqOrnZRFd6N1eI898CQBFUBn9b611srsyrEhOJnYh8TZENHtmt3bVmJ
	Lied+MO//FQXPJzEC5V2ALr9a2WhG6BdMzGCmWZvawr9gr+PSqh7wQ0lKdGxJwS/ThdQu0ruTbv
	elPZOujZFUzXNjYOFjZ/Tc3uLPy2a07hzPKX/la6f3Uo+ZTUZknz19eNWh+21Ub/+jcpTtoFwtd
	5Gcbcn09ECNyqq87PgDHaTrOp8X+mmYaHeHL1YmF52EulWGEk7IgGU+FwCjduEhMH/hbqOLMA2g
	TlWI0+Cr/1O1erNoR4WWn4U8vhLjayYvdgFPzdmILO7Y1sE4LskI4Ww==
X-Received: by 2002:a05:620a:700d:b0:8eb:610d:a56d with SMTP id af79cd13be357-904d4f4dd27mr1394877185a.27.1778180826185;
        Thu, 07 May 2026 12:07:06 -0700 (PDT)
X-Received: by 2002:a05:620a:700d:b0:8eb:610d:a56d with SMTP id af79cd13be357-904d4f4dd27mr1394868185a.27.1778180825534;
        Thu, 07 May 2026 12:07:05 -0700 (PDT)
Received: from pfrankli-thinkpadp16vgen1.rmtusma.csb ([2601:189:4702:48e0:7c65:14b:9590:9d04])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-904f810e354sm570733185a.45.2026.05.07.12.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 12:07:05 -0700 (PDT)
From: Patsy Griffin <patsy@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Carlos O'Donell <carlos@redhat.com>,
	Patsy Griffin <patsy@redhat.com>
Subject: [PATCH 2/2] man/man5/core.5: Update compression format for systemd-coredump
Date: Thu,  7 May 2026 15:05:08 -0400
Message-ID: <20260507190508.386186-2-patsy@redhat.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260507190508.386186-1-patsy@redhat.com>
References: <20260507190508.386186-1-patsy@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1E7664EDBA0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5465-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

As of version 246, systemd-coredump defaults to zstd compression
for core dumps, rather than lz4.

Signed-off-by: Patsy Griffin <patsy@redhat.com>
---
 man/man5/core.5 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man/man5/core.5 b/man/man5/core.5
index 4da5819b6..ee34eded3 100644
--- a/man/man5/core.5
+++ b/man/man5/core.5
@@ -515,9 +515,13 @@ program:
 In this case, core dumps will be placed in the location configured for
 .BR systemd\-coredump (8),
 typically as
-.BR lz4 (1)
-compressed files in the directory
+.BR zstd (1)
+compressed files
+.\" Since Systemd 246:
+.\" commit ef5924aa313d1892bb491c870ba3c429454dfc76
+in the directory
 .IR /var/lib/systemd/coredump/ .
+Compression on or off is configurable via coredump.conf(5).
 One can list the core dumps that have been recorded by
 .BR systemd\-coredump (8)
 using
-- 
2.51.1


