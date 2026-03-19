Return-Path: <linux-man+bounces-5276-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NPGGmdmu2lVjgIAu9opvQ
	(envelope-from <linux-man+bounces-5276-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 03:58:47 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ED72C53A8
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 03:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F4F030AB8EC
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 02:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B33C43876B8;
	Thu, 19 Mar 2026 02:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fqy6eXAP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5381386C9
	for <linux-man@vger.kernel.org>; Thu, 19 Mar 2026 02:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773889093; cv=none; b=QNuJZhJgQcziczcLJ7RqaCnvsdEZNrxW0Q7GTkcmyjAnFesji/B1vDY2lM6Pf9X4rIPZbvg3Ln2gj1qTnXGpvZYAa0NtEpOoV0PaCds68G80yHiV9eVV4vUJnWqI3xyhw0fBUAiwPruhDy9MOaG0tfDU5Z6foJBEbpWftr/N4Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773889093; c=relaxed/simple;
	bh=DKYjPPIO3h8/3sQDvHJFrg5dgeXOS7375NW2uFn3AoA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SmRuuYPJy0cYWHE6VrTRW2QpZN5rJ3xQZNJfz92fXg+bhoPnTWmbYoHHzPinxvJpx4iNoSxj8ID8Kx69+cG1EF9PNFZmQExM9NybD477u6otxzqTXg9odxsSQ9igMB5XiLAW/Zky2cswzcFroJsvGTnDectFMn22PmS0VCq8/Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fqy6eXAP; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-35b905a05a8so112774a91.1
        for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 19:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773889092; x=1774493892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BJTA9YYosNNVgNrSr87KeBfOvShhdFasbByJIoOQBjI=;
        b=fqy6eXAPIMp7DoGq3nnc7CYZoH1femJK9viQPuHbsPn2EI7On3S+o6dVT12JsTMgFO
         0E5d11d9b68IdQBV9Tf6lzEegOv1GXP4URkwdQjXSZrug1BNjnogjtnqyCiP84jFBd7h
         qKFQSRkynErjiEcfeRCuVpqt2E2QrT01SizELck/9WVSpc2yldlQiNt4zTFNUg/mamKA
         incpQjeHQk3L207dRuGL1L981xYJQv2Mc28BEgayJ7wKmTHzWmx8kcfl/cmOdBcPlId9
         gN+nLgMWQg85jcxnG8TQD1m1wuRMB+JINl85gn/Rx9PimNE9/9zct50jkD0ljtjOOMwo
         wawQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773889092; x=1774493892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BJTA9YYosNNVgNrSr87KeBfOvShhdFasbByJIoOQBjI=;
        b=szkdsUXnH4GQa32aB8ofyh+KQfF9MfCmKA2lmgMfsHQ0MUAJ2Gjk2/egJrsbDs/g2M
         576XSii/xM1zEmQb/IIhMB/BQ2UtUu7zVwrwNS1FjtI3UrHILl6AgHe+DfGLJWAs7u9G
         9R64b/KPZDO2+fBUk5cvTU2VKtuHEpH59GAqLZAni9UZ6FV1JY3atAhW5iDA/CKyOlgi
         Hcr/O4c6Q+TCyuusEQP9WOb7nNPRWB365zKNkOUsyDcaRu6p4CDEJpMzJRNCH9f/JzBI
         mzEEFiM/9DQnJlICgteejiuIHj4vePpg81hAmnBg9aEabyruY7DbhvK+42iUzzhJO8qI
         SOSw==
X-Gm-Message-State: AOJu0YwdFaVM9o5hVD2CjlP5Qm2C4u50bTsaU0/4Kk8xpt7vVW8YMkxV
	VYI8Zv1/CddMG6PTu1m2P7FchSB5XQvUqhaWB2qHhVmsd4UEwioYwN5n
X-Gm-Gg: ATEYQzxBL0ernFksfdv98FrTt34P4egYQwA27EuK+j3lnt32i1Gdxxxqu0zotRCbaI1
	1MhF4oRqc5xJMXiItGZxBYRcNKXhSOQp73Sn4nh9ev8na+RyE9kQVq+WfBRhGAKIWcyhzsVv49r
	AH9ijxeIYUla+tZNKjR8zyZSWbGdjhi7hkIGXffp4/M8CjSM3DgeZkJ3+/+8WcRGu9EwJ/OEXR4
	zed6HKvzBzL/R63IWjrU3RdZkncfQdl08Y0jGMdF2VS7fMOTflxerSdxBq0J5yVxUbHCNVwC6ur
	WAQd5cAMavAc8Cqog1nB3agR87n0EpjJCfO3ZIu+tGNBR2km4Gkiy2hyq+yjEdtUOA+Z7N4E+af
	22ND6HmS3YrxTyM6zdSzep68qzo2zuJBPLUIHoasI+ejk9+4QmakkCLsRJwHc+5Z+i+EhYZCVdz
	+LS/DymKktwr2Aobnl1rPi
X-Received: by 2002:a17:90b:3952:b0:359:fdc0:4621 with SMTP id 98e67ed59e1d1-35bb9e57e48mr5530173a91.11.1773889091730;
        Wed, 18 Mar 2026 19:58:11 -0700 (PDT)
Received: from Misaka ([2408:8340:2640:1b81:ea9e:b4ff:fe12:dd0b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9e9b982sm2202024a91.0.2026.03.18.19.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 19:58:11 -0700 (PDT)
From: Ben Song <bensongsyz@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: Re: [PATCH] man/man3/strcmp.3: replace equal/less/greater words
Date: Thu, 19 Mar 2026 10:57:59 +0800
Message-ID: <21b3ebcd31a6f53968e2f987324d7d0c58c5243c.1773887744.git.bensongsyz@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <--in-reply-to=abdLnYA73AoL6e3P@devuan>
References: <--in-reply-to=abdLnYA73AoL6e3P@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5276-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[bensongsyz@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C4ED72C53A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Please don't go past the 80-column right margin.

Got it, I will pay attention next time.

> I think I prefer entirely removing this list.  We should defer to
> memcmp(3) for the description of the way the comparison is done.

Yes, the newer version is more concise, and the description I wrote in
strcmp is actually the same as what memcmp(3) describes.

Best regards!
Ben

