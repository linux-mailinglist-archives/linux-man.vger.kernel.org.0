Return-Path: <linux-man+bounces-5286-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIIjBKEfyWl/uwUAu9opvQ
	(envelope-from <linux-man+bounces-5286-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:48:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA95352021
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:48:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7ADF9300AC0C
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 12:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC0C3C07A;
	Sun, 29 Mar 2026 12:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i6ujAHmk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70B423EAB8
	for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 12:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774788510; cv=none; b=rZvBMPaZiA335sG4iVgyo7s5COF6OQNbEIdr0q2Lf6ngywA7wzLo/+7upRDG0jVjvKQFSyfMSmdYhYAdFHrQdIlfxH+wQoh5qwCuFq2RecWQLxSfib/mvxCfrBxq4jTNakeIgJxc7yIp2Wyyzy2/cexcXHynSzY5fY8lcGwkvOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774788510; c=relaxed/simple;
	bh=DXatHJScoipkVYl/Y2vHEc/o1IdRxha6xreWnc1NMAU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=n0SBPeHvbe0aeUnT0pzKE03/odGIIt5nj2H5jVAhML6mrVN8Zt8+t3zlJTaaDf1NUrUoOvLeyZB9JGxLxKM4TYSsGXUjPIckkfRYPyN4HI2YFM/7L4wSKi74udbutypErNCqVgXoijFbpk1dXfdW/HzSMGAMWXaZJM9NyxiygaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i6ujAHmk; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43cf8fe9c2aso291569f8f.2
        for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 05:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774788507; x=1775393307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JAiUpewiA598rCxdLS+KoWOVVpYDIfm3zvHjLODNuZE=;
        b=i6ujAHmkyhYNo+S6D+17p0fLZYotTr3h142o8vf9cMrfmk1KcMUMGRZOkyH3nE+7/o
         KLxU9NTRza0Ox78OojBWXnyfqnASGd47uxyAuTjBDnnHFUqKtYaFQrrZq+QXqZFFYaGn
         OfDS9JvFBuUyAMRKlWqikklgGB6vsBtarAW6HeOboiY3H6CMd9etFLBxsj2Zx+Sk9EDa
         POdEBwXZzsKaqtuAC0/kafGRFb4v7sM8rB3UZyRDF4Rc8NQ57PAwgAjEWxf+5kl7bxrp
         KgLWBxbXhyBZG54dDgTWLRtbg//lrK/bMr5hc79zTQlb6sQAyVZsyuMRMcvrfOO3C4MT
         LiMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774788507; x=1775393307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JAiUpewiA598rCxdLS+KoWOVVpYDIfm3zvHjLODNuZE=;
        b=YMDLkhO6QJkvEqGhVqSGNyMw2/ixWj+RV6Ybu2DJqx/Ax2phCFzaPTjl3KmXgYcOOB
         PxI8knn0sjOGZUp5eWvEauSHG0VhxFLblyCqu+iQRSH1YFiFGgvlo7E9lplnhKjuYOGF
         7a+goLA5k+AIBrRujsQe2vBgnSID9IkRZqQWmjgo5t17VLxW6wFKrFyEgaPtDAFJEc0I
         GcAZ1WZ6gCyFPjnJvqpYRti+fuVaALykSosynkcvZGy0oOewb/ytBKN2E4KfIl9j9sWq
         joqs31ibbHhIfLKyCQ2MPxQoc5gI+tY7pkZb35qCbM8VyS8ryfC7TB1e19yMP4Y8OpKI
         QWqQ==
X-Gm-Message-State: AOJu0Yy8NX72mq9sHX1vl2Zj6rMtc5tuahRS4TRNNGiRjHVfOh2kSunw
	K4ioBWNkrCHmmG15qQ/+4maJyBkCXUI5NuTgN7AgEBZbnGN0XPp1YaFC
X-Gm-Gg: ATEYQzyUYX4ArQR5rAsWJvAj+W/qHS37OFuCfafayG2ckxHrasoO4eIifEKaIRM26xQ
	eRzzuRye28iBzsHnbPNYhoI3og4pSI1CF72OLtVgDkytZyp+6ArnOed6cP67TdradohUj3ixFkl
	n9UmUTDZsf51FaujNiFYGHnPFRLVkECZ8twHoYi3784TuoZxoWuc+HEeCSaCls7jvlzMP+nSAH+
	KSiSVEXr1Q351pcMyzAg8APaLMe0Mp0PNxvY3UaZlc0xgs4asCczc7yy5oSpG/5z1MOmiLcrK3C
	+HHRPxafjj4rAnwrYiOLEWnfM4fDkad8GRZP8qez3eu4PUJxNqwYipp6qHtMQoZt4btcYAMoRh/
	8KpGvalHitoYDpRE2v8tifxTBOFg+k2FAbsZZYjx2NUlbFA04MKXgKiXXNL1Sh+5lHja0IOiyRv
	9GXgMu6tZpxL8Yy+lZp7qhFaDSura3wCp57myOJIxKW9VEPd2q
X-Received: by 2002:a05:6000:430e:b0:439:c5c5:4146 with SMTP id ffacd0b85a97d-43b9e9d5d0cmr15129220f8f.11.1774788506946;
        Sun, 29 Mar 2026 05:48:26 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf245e4f5sm11779068f8f.19.2026.03.29.05.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 05:48:26 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 0/3] landlock: Document audit logging
Date: Sun, 29 Mar 2026 14:48:13 +0200
Message-ID: <20260329124815.92502-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5286-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7EA95352021
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello!

This brings the Landlock man pages up to speed with Landlock's audit
logging support (introduced in March last year, about a year ago).

–Günther

Günther Noack (3):
  man/man2/landlock*.2: Reorder errors alphabetically
  man/man2/landlock_create_ruleset.2: Document scoped field in struct
    landlock_ruleset_attr (ABI v6)
  man/man2/landlock_restrict_self.2, man/man7/landlock.7: Document audit
    logging (ABI v7)

 man/man2/landlock_add_rule.2       | 38 ++++++-------
 man/man2/landlock_create_ruleset.2 | 26 +++++----
 man/man2/landlock_restrict_self.2  | 87 +++++++++++++++++++++++++-----
 man/man7/landlock.7                |  6 ++-
 4 files changed, 116 insertions(+), 41 deletions(-)

-- 
2.53.0


