Return-Path: <linux-man+bounces-5350-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIxPOzeq5mkJzgEAu9opvQ
	(envelope-from <linux-man+bounces-5350-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C84434B43
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D91003002539
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 22:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76461BD9CE;
	Mon, 20 Apr 2026 22:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c8rX3Bf+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244EB19CCF7
	for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 22:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776724528; cv=none; b=G8F3epo8U8fWBx/xePVfGY2fnINdX6GOLadY1H+CuTEzUiZu8oP7i3v1vBnJgH9a2J9BIfBHHa+nftTayiEiJNo+YVTq2f4u7lHKlMe6u7DhwprZ5zSF1LVZBCMn+D9w2RRjynoHpKe6F5SEAwIT3UdDBBo5Qg9EwHMLlJNLIxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776724528; c=relaxed/simple;
	bh=B0UgZXvg5Tvfo8Ppi9tStrE+Av6uU20Rx8yY0RKIIzc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=apJRg++Ebtt6XvgkcBlMAcfZ9Vqt4pnTritLeJU7QIpWJdrpEBJnJl30YZ4PD4lB18S1vsjrsDsW88Zjd7TdOl6yonQsE3W0csAGPtFrKzdBuAcJCpfh0kJ8CkqC2xa8JdKfuVFHyF6GdDUG/ksYg6iVbhnjYdGXcr6rwkDHXpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c8rX3Bf+; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43cf7683a28so2420140f8f.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 15:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776724525; x=1777329325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JGjwzTXhPcQt2JCkBhZqWlGZRK/KNwW4J+o9pSEsJoA=;
        b=c8rX3Bf+kZAXYPnLB18oqPRR+ZyZM3PUqs/HUrWzpbLgJreEId4IsDfNvTqariCfUZ
         YH00s2K7PMxzuxcssPPz5aQXlAmgLHA9ZvlwDcFaVzA3fWMWDa/jXdilVUE+LBMOWpvO
         k1vc/E4GjJRJ2emtBzNi6VDGP8PJu9e4aOtyyBltMXa8PWj/cW1cfGhU84nWto9Jb7bl
         B3So/iuIU7ZJ/dHFkyMQViUugdn9fORKKz8MKBO8RoxvuskWc4c29zlcrjUPoS08BQS9
         oaQ92LZKXhOBnijFZkJtB0HvZia8SOvNSaMySIzsM50psPZBRJkcSTUciNNXxGJkOW8V
         vi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776724525; x=1777329325;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JGjwzTXhPcQt2JCkBhZqWlGZRK/KNwW4J+o9pSEsJoA=;
        b=PkRPVi/SpwrO9X+Q2Jg1zJ/UVqYOtyt3TOf1uFCWjQFzPCgbgJgP2mDNgQblu5DNH6
         RdHuoRl8dCdAMuwOVEAQBa8Gez9A1WOFsfmPiik4IHaNBzlguVgM/FB74bLjqynA3g8f
         AevCpf96bfvVyXYJUCu/heybuD8Rp3xhZ9kBbDdovw62BGxOiTjVcSBnM0b0K8xi5KUa
         OqK77FHaJt9ph4FKg58KbVrtBxkB0Zg2KE6tJ4JgqCBC8eQUbyPFksDkzGmzLg8SXa9h
         /o5XAIuyzb23/3I0zJvBzVEgrMj+3/5c+Qs+2QNQJXw89tgTq5n+lboXV6nMCzGiU0zY
         n4vg==
X-Gm-Message-State: AOJu0YzRds9Tpdj8Rz6nTrV2C9WIADxdeQU7UCPFM5NrIK/YqfB0x523
	3S396hjP19UIOeEgSRa6ydIVYJMjs+J33KIAIWt1ffsy9pwjES3bQW/bpsRk7UsD
X-Gm-Gg: AeBDievTo6fO+twq3/UyGUUxUMwnXyUxb3dWwjT6DSLmTzUrllkx4x84vyolBjcflI7
	NK4Y+Phj7krPb0auBCzMlpoJRcoHhHBvvLT6AfvFgh/HAVvgpCVFD9ON6XpW+aeZs0gU8dJziJl
	0Oj4Gx0XF7skVQMFtyLKQBWi7XNmI+7pqYJkETV44YhnjTMK+CpLTfUXC96+6Zpsk9/Lpgu0Xyl
	q27hmmRo5T1uVcQFPL/OI8q3b9StM45+eSf/3r7BxF80gQz6UvNBVklCKnkg2xlfwt7z+QN0yXr
	kx6hV9NgWX0dL3M0SG6XQAOmif69YXPZFHmBfN61y/xfcDkJlPrGzl1LjttdaXndKa2KxUqZBlK
	78Z17wfID9anNpn94SCe0cs8pBLI0Nb4ahw5FkAqHs/RuwKRw0Z7SHoDCYxq5JdG8XgQm3G8Xbw
	s1yenN/AKu3Tz3AJ3qg+yYpsqPxylSXEvKnwgZuNifcSPMoQZSwuY4vXBaOvg=
X-Received: by 2002:a5d:6a83:0:b0:43f:e46e:82f5 with SMTP id ffacd0b85a97d-43fe46e83cbmr16078887f8f.3.1776724525092;
        Mon, 20 Apr 2026 15:35:25 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4cc07bbsm34819737f8f.11.2026.04.20.15.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 15:35:24 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 0/4] Update Landlock docs to Landlock ABI v8
Date: Tue, 21 Apr 2026 00:35:13 +0200
Message-ID: <20260420223517.8020-1-gnoack3000@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5350-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 00C84434B43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello!

Thanks for the review!  Here's the second round of the patch set to
bring the Landlock manpages up to speed with Landlock ABI v8.

Change Log
==========

v2:
  - landlock_create_ruleset.2: added a tiny patch to add a missing
    mention of "scoped" in the errors list.
  - landlock_create_ruleset.2: various reformulations for errata
  - earlier patch from v1 about the default ABI version assumption was
    already merged (thanks!)    

Günther Noack (4):
  man/man2/landlock_create_ruleset.2: Document EINVAL scope case
  man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document
    LANDLOCK_CREATE_RULESET_ERRATA
  man/man[27]/{landlock_restrict_self.2,landlock.7}: Document
    LANDLOCK_RESTRICT_SELF_TSYNC (ABI v8)
  man/man2/landlock_restrict_self.2: Document ABI requirement for
    logging flags

 man/man2/landlock_create_ruleset.2 | 59 ++++++++++++++++++++++++++----
 man/man2/landlock_restrict_self.2  | 20 ++++++++++
 man/man7/landlock.7                |  2 +
 3 files changed, 74 insertions(+), 7 deletions(-)

-- 
2.53.0


