Return-Path: <linux-man+bounces-3874-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84059B857D9
	for <lists+linux-man@lfdr.de>; Thu, 18 Sep 2025 17:14:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 806337BF161
	for <lists+linux-man@lfdr.de>; Thu, 18 Sep 2025 15:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5C11DB92A;
	Thu, 18 Sep 2025 15:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="E4qIUWwa"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B976A27735
	for <linux-man@vger.kernel.org>; Thu, 18 Sep 2025 15:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758208337; cv=none; b=m27RIrF+l7N7neX2aJa9GBpmp8WsTf5CV1mk0QK0rIif5Ua02TCdp/whBni/CeEA25IxqCuzEH3TMk+J5SuxA59uqFqEDGOIaf50bWoBw71ulSk+BxFU2FZamJOR6uRqQ9juX683qAZtpNxoI3dCNiCjNK0ocX5UChNj+4S/RKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758208337; c=relaxed/simple;
	bh=xDwCGyN1S1IF7cDQSPkqfz2eBHD8L5UKEmLsRZPBHZc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=PWLBeUdh8mMTVueghiZkCF4ztOsKmmMmLruF3vccaaylqi38fHoI0IhKjwSLyiM625GJWon+nKG1/DizX+LuyOAkeu8fE46lNaeFxjoaLhYzNgE9LbvB2bI44GSOQm1NwGlXBsAFfQyAae2rhvoBg5nuLTG1rL2CDnCS9xpQiYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=E4qIUWwa; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758208334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=ecGZ5dSuz+lcojhHV/DKdsFkCyWgm0YbA/jMM4xgKlQ=;
	b=E4qIUWwaxhBy+bZmBvggFuI/86sNHC2CEfD3u60D7FJsKtXSICCCtCImCmZ66rJ2A/BPGG
	89qQfxQ7mCqSd72XY8Vrd5e7FBiyU2KSpYI3FrFvPmtNite9YcGn4oPbY2UWD0tc1/o6wx
	RybkesSINN2RKw6Ydj+JWlVERTsQhGc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-315-PsXCDycmOI2kaHLowyjATA-1; Thu, 18 Sep 2025 11:12:13 -0400
X-MC-Unique: PsXCDycmOI2kaHLowyjATA-1
X-Mimecast-MFC-AGG-ID: PsXCDycmOI2kaHLowyjATA_1758208331
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-45e037fd142so11901095e9.3
        for <linux-man@vger.kernel.org>; Thu, 18 Sep 2025 08:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758208330; x=1758813130;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ecGZ5dSuz+lcojhHV/DKdsFkCyWgm0YbA/jMM4xgKlQ=;
        b=gMBUYMVZ4S6/42EYXATySxCsU11VK02e51l9ljMY5pyv619Uh2WXzTg7iU6UcaOioP
         qif7d1lzQNKBZwkHfkc8J+BOlYLCVZwOqYNLPijP3qG3QhHcqXU9k6ylWuBSyYXb1jTC
         7H8Oh1zUj+eUG9Rl/AAojm8LbAsZGXm9FshMUyzuiV35mtl95nFEWSRIZ1BstY68GHMM
         XU+TQzoMV6LcLjepqEZ5bHBUgSt8huRVAHnNYMy5lBuAqhaJSnjY7LPNHOGDu8+XVvqa
         1B0dTeWDfPYaVny20dYpm0gOGoHQm+qI4gn5BqTnosnRg+5wXY1lTzXDHA9MuxY5Fm6s
         2F4Q==
X-Gm-Message-State: AOJu0YyGFyWRvUrAwGq6bZXmW1sAj9PfctOq1DT3YrhdVu7aL5KI9+kJ
	z9cfLybZO/4O9DNuhsriwUSwecT4r2UieYaphcR0a4xVScIX2YzxcobjBkLIq4+vr+IX7siP12T
	uNvb8fvPy5PYiFraVCIiMdJu7wTt6clW9U7W0htF8giW0KmfRgEVdCVQFOLkpq/8oRAsLrw==
X-Gm-Gg: ASbGncs6Gp4ka4El3fArwd7eywbFYBGRWMvUZBMQyvBeF80SfOmw7ygj7m+3mLvj7Lp
	QZBE/3cVwZzPLoIT171GA/Ub3gYiUDDjl3kqSmz7wp3O1JqXEuiTuhWpWYUz2mg8jeqNOlNtt6+
	CYUigJGn/cn1HQhl6s0dcOFLpYbj+gHFC/Gt+dmpOggfqndZ9AsvjjK892RGYgy7BqS/i7e6seZ
	KCR6uPvWlpRC8tJZ3tzJFwXWi49+DmeRyhQJPtXHylkyEYnLyvOcYhiRZAYePWAEuh05dGqiJ5I
	hNTsQZiVZmBED2vD67A8cmdqm1D8iY9MJRY+Nhq1uAqs4WsgQS0m/Caa3A2UGzRUYWv8h1SE8N8
	WHkCP8EEwzjs9fcF3MQc=
X-Received: by 2002:a05:600c:4590:b0:45b:7d24:beac with SMTP id 5b1f17b1804b1-46202bf828bmr70621485e9.10.1758208330587;
        Thu, 18 Sep 2025 08:12:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAK+EevVK+SFMIg+GefN3KpeGoMh9QgLwF/pFpxYk6TnvAPJ+wHrt4PiWrhJmmkvlL2xJpOA==
X-Received: by 2002:a05:600c:4590:b0:45b:7d24:beac with SMTP id 5b1f17b1804b1-46202bf828bmr70621205e9.10.1758208330154;
        Thu, 18 Sep 2025 08:12:10 -0700 (PDT)
Received: from debian (2a01cb058918ce00a1bb3a6c734ac047.ipv6.abo.wanadoo.fr. [2a01:cb05:8918:ce00:a1bb:3a6c:734a:c047])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fbc7284sm4096906f8f.33.2025.09.18.08.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:12:09 -0700 (PDT)
Date: Thu, 18 Sep 2025 17:12:07 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] rtnetlink.7: Fix .br command in RTA_MULTIPATH.
Message-ID: <901f3e9f201e9dad7af3456ec7e21e738dfbd899.1758208304.git.gnault@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add the missing dot before "br", so that the command is properly
executed instead of printing a spurious "br" in the output.

Signed-off-by: Guillaume Nault <gnault@redhat.com>
---
 man/man7/rtnetlink.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
index 46bccef11..cb9f5155f 100644
--- a/man/man7/rtnetlink.7
+++ b/man/man7/rtnetlink.7
@@ -345,7 +345,7 @@ RTA_PREFSRC:protocol address:Preferred source address
 RTA_METRICS:int:Route metric
 RTA_MULTIPATH::T{
 Multipath nexthop data
-br
+.br
 (see below).
 T}
 RTA_PROTOINFO::No longer used
-- 
2.47.3


