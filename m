Return-Path: <linux-man+bounces-5377-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE2lH0gg6Wn2UgIAu9opvQ
	(envelope-from <linux-man+bounces-5377-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:23:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C86A444A1BB
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:23:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 31A4E3015D1A
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D315834CFCB;
	Wed, 22 Apr 2026 19:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B0e865Sq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631313F1658
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 19:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776885827; cv=none; b=jyxYSc1PzTPG2yzxoGp0mI/+A+BgfGUKP/ZyZyRjah8WoGaLcmChZU4+howgCXu8klXYEpf/bkVMXbz8VU6vmJYx1lWFThH2w+AI+eILMP3qkZlgMHZKF/HSR/wt96AzxuSMpDwMynUe0qtADeKDHCg03tBYZG2Lxce7U3O3uXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776885827; c=relaxed/simple;
	bh=S2AsqEj2/rzDKOue7eJbzz56E7Ok+QvmLoGnyjNDPRg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=AQSe+V4R4Hqk3+9/g+BsEIThWrpcks5bf9k9get52zK7qpqfBWSHxxkiVB+wniX/t3eLkm9WIPR0cCffHxFIqS2jAzPWmC954MI1Zb6IrL6lYvSuSR0H2nZMl8fbGs4sWw2L+Ls8SbtHLUFZb533k0R1G5R83jw4V0aUF06fNQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B0e865Sq; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43d70c30767so3998887f8f.0
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 12:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776885818; x=1777490618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XEtKP83fDKRMM3D00lJE0VDiptX/GX6NBfFPTL64ywo=;
        b=B0e865SqBJMC8CS39XOPdDSLm4LrJt2io9rnISpqwEGekRpr9fLqIHXNWhA6IUuJ3f
         i/CsPsH31xMTOi28JQWYBTKfiPAmLhzmxFcqZJ3Jg6FeU1u+QmCRDTY1AvT2v7iDW8bN
         BKPWe1gidZckrHzYAkmDvuowkNDEQgQJhHJUqAy6oT8TY8gsjKSIGKtTS6V+pZ3oLaXl
         kVQAUl1VHaPzsFfTpHG/iWb88ezxwYzvJ6waSS9y8rLKGbP1Cw3nByFzFkDU7W3kDaW0
         3tHe9+9ziuNGvGX1YYo078QKKdmrytWV1jZYhSmlrm8mTBoDZMAysxDphWqP6J/Kx9Qd
         AcYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776885818; x=1777490618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XEtKP83fDKRMM3D00lJE0VDiptX/GX6NBfFPTL64ywo=;
        b=jHmtYQLfJtJ8KfZPXgF+BY8QVgiG8Nua91Z4eGSP/UQfaMqoz3iIlmzLvqTJo8jrJA
         o3vOqw0FzMHmiUal5Jtr5lA2iFwhGG7tRtSa6wtC0ICRAddnhW4PnlysAcH6+dvgtLHE
         DOw98CLO/5/DuZeh3mwcNu+5FlZdDJJqYHmNQWpAfoX4aEOBoSjCdeNUlr1hk0BSykqo
         sRqubPsMbkIPZj2uI2tnK9j2hGYBVw1jf9UMBHgqjulRzaskdfji9s3XE1Pq7mIQPpOt
         mhtrQ0Ky0/c6s3TY0K4di4saBExWpCTN13sEEPW+fEjJRSb5VMjoMP5nUXajmdsGifsj
         Mzkw==
X-Gm-Message-State: AOJu0YzXV5Pvw42RC+yfM3BnmBXdiSiN6Qwv87p8RqwYsjF8QXfb8jaI
	9fhsUKWjyTdaB65H2uHdqwyuUdcbV+JNtpd0RemldnCzmMofP+sfcfpZ
X-Gm-Gg: AeBDiesZekU3cOfaahpJii3Ozv5Hu16WiI9HI9B+Vo7uAD3y/KDFf9TmqWdC5GMTJLP
	uTUMD4pNy4LkeiU7FL+wAMn6feaBzr4RGdUAh5FsUFOoj4At2QvMl0oQr/cu1IVDzGHOmnM1dRa
	0M4SocvgSZUra2avxCK95qNWcubiC/mC5qaRK9UUwmth4YmNfdmCRnye5yl4013Z47w0PyKh5vL
	lrjPvGa5t41o9JUbkV3tV4xwFU/q0bANQc3klv7DG56zJz65LZEZk/dMQofo7VJMQ+Zsfqy/q6t
	KsOPgKZBQxG3617h1c1ON0gys4YXdlRRSssThUbjhOrx20jrc5dkIHwY7J0uYrVIq2AJ4bFVjFP
	8LKnPGURac5Kt63jLDsyDto1J70LIhYuGXbeNIO5aHfxS7KektLjwzNWJGrnmcHgH/XEc62LfHv
	8V5EvTSufq8AMQYqZpFDSjTBT8JUiqQqK1cUkBjaiRPBmodJV+XLHtdtDHpe8=
X-Received: by 2002:a05:6000:2002:b0:43e:b0f8:e019 with SMTP id ffacd0b85a97d-43fe4034471mr37379785f8f.7.1776885817912;
        Wed, 22 Apr 2026 12:23:37 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e4d6casm43078294f8f.32.2026.04.22.12.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 12:23:37 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 0/2] Update Landlock docs to Landlock ABI v8
Date: Wed, 22 Apr 2026 21:23:28 +0200
Message-ID: <20260422192330.7623-1-gnoack3000@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-5377-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C86A444A1BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello!

Thanks for the review!  Here's the fourth round of the patch set, this
time just adding the missing ABI version information.  Added another
small patch in the same style for the adjacent Landlock man page where
it applies.  (The third Landlock manpage, landlock_create_ruleset.2,
doesn't need it because one flag is available since the start and the
errata flag is available where needed and backported everywhere, as
previously discussed.)

Kept the cover letter title as is, to reduce confusion (but the part
where Landlock ABI v8 gets described is already submitted).

–Günther

P.S.: I have a half-finished commit for the upcoming Linux 7.1 release
as well; I can send this one soon, I assume it's OK to send these
slightly before the release, given that the code is already on Linux
master?


Change Log
==========

v4:
  - mention ABI versions for flags next to the tagged paragraph title
    where they are described
    - 1/2: do that in landlock_restrict_self.2 (based on v3's patch 4)
    - 2/2: do that in landlock_add_rule.2 as well
  - earlier patches 1,2,3 from v3 were already merged

v3:
  - split the size/attr clarifications from the "errata" patch into a
    separate commit
  - earlier patch from v2 about the "scoped" EINVAL error was already
    merged
  
v2:
  - landlock_create_ruleset.2: added a tiny patch to add a missing
    mention of "scoped" in the errors list.
  - landlock_create_ruleset.2: various reformulations for errata
  - earlier patch from v1 about the default ABI version assumption was
    already merged (thanks!)    

Günther Noack (2):
  man/man2/landlock_restrict_self.2: Document ABI requirement for
    logging flags
  man/man2/landlock_add_rule.2: mention ABI version for
    LANDLOCK_RULE_NET_PORT

 man/man2/landlock_add_rule.2      | 2 +-
 man/man2/landlock_restrict_self.2 | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.53.0


