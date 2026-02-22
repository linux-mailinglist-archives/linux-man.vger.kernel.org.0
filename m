Return-Path: <linux-man+bounces-5189-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OnCIQ8Ym2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5189-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4919F16F766
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 30994300B9B4
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B9934F48D;
	Sun, 22 Feb 2026 14:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OjfsT6+6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23192253EC
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771895; cv=none; b=QL3Qd2rZtE7ZwY6GYulZ8bzt5xx2EiNNAZY/a0807pT/2NNEiGTcSgv3EDVS3mf/riRRDLH+WpWb5E37wc5sI4LJNUIW54XxsboeIyj5d8Vw8y1oHOpxh3uLgxAjSaOlE5QEO8TDl5RxQz0nmEpz6dEmIz68chrk7v06lpG/6Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771895; c=relaxed/simple;
	bh=CB+5hAnFHph5CkHxoGfzScoXU7a1U0Cz0/Mr6ta5MC8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n0S89IlfC3RP/kD9rgB21vx8uqInNKU97NB1iVsmcKA6fdXADkclLOi5BsFrHoVX5tQkl6yQk+MtZCLgYhjWbMix3T8chw4rG5B5e0RiDPYW7ideX1kZy+0yomSp3j4dUtHnepC+mw+36U70mV3QzViRC1Z/7FUYZolfviGlcqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OjfsT6+6; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a95de4b5cbso32747665ad.1
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771894; x=1772376694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AsRzc0Ag3RIJloCiWeBshJe5TmAfUBC0XU+aMhJBAkU=;
        b=OjfsT6+6UIUIhlf0N9BQt0jWsV1yBiD74nrmHg+6a7qdZQVUc1Adzsz2Yb8D0V4BsJ
         xKwCn1f7AwdHYSdbN960LPAaQNP1sJ0cxmEvFvFCS83apRySOig5ZIRKPBvP9v14AMIH
         PlNrgmDERiJit9VRz6nRUZ56P3R5XdU+NukMkjRzrgMiiLAyfZ4y8fp2Twt+5N5wJPN6
         NzMlunxvorbdpF3I+1Mnb7a4V+zSm31rS7Hf1p9yxl666Z6d/qlow8Y6tvnBLlRtWti1
         xH1kQf9AA16Uu8QNcyW/kG+CHz+ABeo/uCnGlUP/KTJelQs4WqKSvsJHWaum0E3oUDs8
         TAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771894; x=1772376694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AsRzc0Ag3RIJloCiWeBshJe5TmAfUBC0XU+aMhJBAkU=;
        b=cDZqXkpooG8MIxxTo0SYydCqpQ6bbOOwAKqHSuPFypEhRrDpGS7wy9ppwNEVyQS0mE
         FvTT/lrHMQiq00gGCOUr1D2WiTIJy4RmbJ/pcCGIEdrh0ZFC14GNb/fbpO3aQzkCxm8k
         g1eqCjiAzkPDabTafM81SoqFETsa6RRLNT3O4d3uV1KuPYYUXFIEXa9a/CZUPCIOKbbD
         WL26cphMsG08VRYHQ27bqU0z7D2ZZPSlW3NjCwUgKS3P1dsQTZ5/TVYq029v6RvoxWCD
         +wDhB/kfxtZ1OV1Tn8Ut3ABzdKSop0Gf6iX4kHlUBClEbJ1w/yu1s3q0LJTkbEhZb9oJ
         2z6g==
X-Forwarded-Encrypted: i=1; AJvYcCVgF9XSKIJoWHHuGqNMesgmhIqU2CUzjcEx0WwOeo/0rgY/G/jJ4Y+kaUeb4gj2sn7isCAwCRL69Tk=@vger.kernel.org
X-Gm-Message-State: AOJu0YxYrSOTQq/5O3hnyHarpHbIkwht7q265c1BktFsCKuffM21e38u
	Q75vuK/NwFb+NOjAVNbR5pZK5zVO4yZSL5XcLF++4Z64GkZXQ1wxuSP5
X-Gm-Gg: AZuq6aKX/Ed7FNfFTQBDq2sUETUoYIGDUQ4KZ/+3ixgfNmm934PSvZG9B/AueeaiOG/
	/824coTPD498GmdmKQJrhugIaj5Szcbw9hkJ0pcSGHvjS/3SFSYI9nIayHpL7PmS5Qk1olnjPxA
	OGeXZz5RS6DgT80Xjk2Vo9NQzY+wkVWQDNYJrnwgparMwSYy7DlRbRtU3VnM+ZxtFBdOGeRWQpR
	iK/IunnTjOlwg9ATyAH3vRrsvbM0hjMDZ1hngTGlOZ3wwfUKnyoTeiNf6rsEbSJy2YAbs+ESuXn
	SeOvQTFQsat4qBo9F1MVTCXzsTnyfwTnYnxMEMhfKOv1PKu1IQoPWzLr6p5jMjJy66YcXBJCDwy
	WQFlHy4ymePg6xEEM66gX5ecKIQ7oTChUPSE9KBodE5tDZ/AlBNPWyGJGcyGtVVxsUnIczBVjjc
	WW9c0siR4dDa9U2xYe+tG4gvkHbGeG2u/lLKxpXysYQzSXEfDC6AojKJU=
X-Received: by 2002:a17:902:cf4c:b0:2a9:5b48:2b50 with SMTP id d9443c01a7336-2ad743e281bmr60810845ad.3.1771771894035;
        Sun, 22 Feb 2026 06:51:34 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:51:33 -0800 (PST)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bhavik Sachdev <b.sachdev1904@gmail.com>,
	linux-man@vger.kernel.org,
	criu@lists.linux.dev,
	Andrei Vagin <avagin@gmail.com>,
	Pavel Tikhomirov <ptikhomirov@virtuozzo.com>,
	Jeff Layton <jlayton@kernel.org>,
	Miklos Szeredi <miklos@szeredi.hu>,
	Josef Bacik <josef@toxicpanda.com>,
	Christian Brauner <brauner@kernel.org>
Subject: [PATCH v2 00/10] man/man2/statmount.2: Document New Features
Date: Sun, 22 Feb 2026 20:15:50 +0530
Message-ID: <cover.1771771560.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5189-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4919F16F766
X-Rspamd-Action: no action

Hello Everyone!

This patchset documents all the new features added to statmount() since
the syscall was first introduced.

I did work on the STATMOUNT_BY_FD changes and I have tried my best to
understand rest of the features and document them.

I have cc'ed the authors of all these new features, please let me know
your thoughts.

This patchset is also available on github [1].

Changes from v1 to v2:

- Appended Linux versions to document in which version new fields were
  introduced.
- Fixed formatting issues and wording problems pointed out by Alex
  during review.
- Reworded STATMOUNT_{UIDMAP,GIDMAP} to better explain the feature.

Changes from RFC to v1:

- Document req.mnt_ns_fd as well.
- Fix all lint errors generated by running
`make -R lint-man man/man2/statmount.2`.

[1]: https://github.com/bsach64/man-pages/tree/man.2.statmount.v2

Bhavik Sachdev (10):
  man/man2/statmount.2: Document req.mnt_ns_id and STATMOUNT_MNT_NS_ID
  man/man2/statmount.2: Document STATMOUNT_MNT_OPTS
  man/man2/statmount.2: Document STATMOUNT_FS_SUBTYPE
  man/man2/statmount.2: Document STATMOUNT_SB_SOURCE
  man/man2/statmount.2: Document STATMOUNT_OPT_ARRAY
  man/man2/statmount.2: Document STATMOUNT_OPT_SEC_ARRAY
  man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
  man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
  man/man2/statmount.2: Document req.mnt_ns_fd
  man/man2/statmount.2: Document STATMOUNT_BY_FD

 man/man2/statmount.2 | 176 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 172 insertions(+), 4 deletions(-)

-- 
2.53.0


