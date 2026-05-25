Return-Path: <linux-man+bounces-5587-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNFgIMJAFGo3LQcAu9opvQ
	(envelope-from <linux-man+bounces-5587-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:54 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBA05CA804
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BDF2301B711
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 12:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ED623815EE;
	Mon, 25 May 2026 12:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="bN3cGPfM";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="rpV7gPWX"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A8D381AFE
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 12:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712108; cv=none; b=nUlgGXAoTqZ2DtQulfFpyCu0Ij7QlRChRuhrPloN8BVzCzVMAYjC/KF06TsWcBEj1qItaNjBqCEVZs4lfj54Z5pZfqZn9wRrobppzIKRXoHAPGkvMhNnqXC73gbEYOPTb3pM8Ngnnatfokk0/fj7Fbap/HgmsrStea4/yLFnLb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712108; c=relaxed/simple;
	bh=8aemTOoR5XCBfkK4SGG1Ou8A/PgGs5KXkEoaA71+FiI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T7W2tbiaM1Q+o3QL/XATxyMmMnSqxIbNgd1SbWVfFO/Ys2cltdZYRe1rQhIJZMZ22Qj4Bw5Io/K9QhVIxeQKd5NVG6yOxEsM9cDjCK+kW+1G9Ul/DCmue2jA/73TKSwrPRbwn1iZG+oWn5gFAoqtKH2kpBNyyFs7yqJOsp+TXcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=bN3cGPfM; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=rpV7gPWX; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 8125E7A0074;
	Mon, 25 May 2026 08:28:25 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-09.internal (MEProxy); Mon, 25 May 2026 08:28:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1779712105; x=1779798505; bh=uKi13XFYGH
	xE5H01qGt+OAQFTSmA7QCYSfB1W9P9fPU=; b=bN3cGPfMZYVES6fAywbY476yJ3
	P9lSXcXeTf5jV2vDe6T1/Eff1SJuI7bCdOjxgBrk/vWXjvixRbEruHow8HxZWM29
	A07G6Lfg6TtaYbuOJ/9FYhQtm2N5UUionAmv8ShTMb4hvqTRS5xgwDth11ZQoyAO
	VbeEwN7bHLBxf/eu5JFPxzWo/KEzMV8rj1nwNvWG5XRstZC/oQJtoHY4mUkoIaSr
	ETBM/q047HBPIDLM9oIhOOnl7je07QukvKdKzu1aXZc7eSCLWyFwmjhG96AirUCo
	1/B6rXBiXGVjj5gYATbvrz4+RW/JKoJhVZAGLW5ScLWSMKVEONs71Br5yqdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1779712105; x=1779798505; bh=uKi13XFYGHxE5H01qGt+OAQFTSmA7QCYSfB
	1W9P9fPU=; b=rpV7gPWXKhIe/tzR0Fd7CLquFaDRKVi0mG2JTOLIi+QhHDVrwjg
	TDY/xW2baU0lno7tn8Mjn5YmXFJiELXSFH7HJUv6xB//2ukKhh7cv8aPGs8Z/CkF
	/TOjx7QR/xIhzidqJh+y80cyw2WEfuqqcp24s+NS0k852M4nlMZk5gdkw/WtIgfE
	XQfz5Cb51R6oNuSVfGPCnN8x4veYFu1oKIjD1TdIfLRZa5F3Jo2Kl61XyDUIYccz
	nulifsMRfZY7jX3rjBz5GHhvmZ/WAiCE+tAbNslrzpdXVg2mjuaqTsTMbGxROrqI
	LJBVjM3xjg/4W1VidkhqmSuoL9JYvK3Ox7g==
X-ME-Sender: <xms:aEAUanLmR7l9fx3bIVA_DWAakVKOx3travpYLdNyLgo8I9omOVQ-yQ>
    <xme:aEAUattqc_ydspCM_OFxZPIZUy3PC_optL2aLfcz5W-QfUIYb8xy55xFowFXZvlFB
    tny_k1L5XdD1R8bxvNxNzkaeO6wAtrIVvPkmi-BdGGr9tlfq_g0RIw>
X-ME-Received: <xmr:aEAUajUWJyKfE0SX8Lx-4WIOi3LGBx0svI4qzTG9WFf6ifd4M_48iL6vylDRsg>
X-ME-Proxy-Cause: dmFkZTFacEodU23Pdk0BrnjDah+ui/4xWTzU7ZxIne5t6QnObMgxeWaw1jpBdqHrH65bvR
    3j2OVmpM3Co9VT1jokivW+hApewY27NRKKOCJJR23Y7KCp2dD+9tPbfRhPauWWiWZqS3Ds
    b4d+pJyAVvn2CdrJ/DUlt4t447KLZ7Qx9jMHlYiOIUwZBdB9PPCNFwiMilY85HI7F1Ya7s
    bcgtGIeFuD1OTIXGwfw5FW/E61wF5KVcoHQQLepDDOAIA68QFZr/qXas46Q4yHJ2fucxxe
    Ued3s/g8RbDmu68B1/JZYbG9qSdFfTzGoYgiTF4jjgMh1BXcuRf26gpPRMhnEiejxA01cu
    ahVscEMGAW0rR1pQdtj12epYG/aLHDWsROIY05NW5rj/0zOMKVE4C/4SLNSnDV/VsFNDwy
    7xUk6JB2hLDtbBEchHzzjqnSpV8VOm6e7CheKmqVjzlgw/ZkKV6SAU0f18gCBtrJ/6NZfP
    RES8K3KievCDkS/gbf4TYKPlLRRZkrduXacQ5UbSm6rwW3KQJkESV8pJ/Hn0Cf9wAtDHvx
    fz7XnxR/X16RJWJOvk5yFT+9ecAHoHW3g/nscZb3InvY8XQw9J7vVHaMlty/D8jqSXGnSQ
    9s7OoqwGh8tazmnXmg0EdY1Osn4QqYURaib5FQNJjJzoaBYgRscQZNVHbo6w
X-ME-Proxy: <xmx:aEAUagjIACXzwYVHcbntxgARd8CJgEsjLnOlfIivIncmTjYUH7g6sQ>
    <xmx:aEAUajqL7E2AVLp1rrs4AuyShZAdWEBrY_TW7V_jfSisE4dkclHSIA>
    <xmx:aEAUauEZ52kmLobnx1ivGNl6BqwZ7oOE6dqc6bDnDeQ0MJ7eZP0NYA>
    <xmx:aEAUag4nGXu5etLIlSrDsJHRV3MeVO7SrPabzQkXlT2LnPS9a5ixFQ>
    <xmx:aUAUaoA7CSwEOcgIKdu481Xp83_7IauGPTKzuPvd_Yww7o3DFFbP03Yz>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 25 May 2026 08:28:24 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	Kiryl Shutsemau <kirill@shutemov.name>
Subject: [PATCH man-pages v1 0/6] userfaultfd: document read-write protect mode
Date: Mon, 25 May 2026 13:28:10 +0100
Message-ID: <20260525122816.1956804-1-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5587-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim,messagingengine.com:dkim]
X-Rspamd-Queue-Id: CEBA05CA804
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series documents userfaultfd read-write protection tracking
(UFFDIO_REGISTER_MODE_RWP), a working-set tracking mechanism for VM
guest memory landing in Linux 7.2.

The matching kernel series ("userfaultfd: working set tracking for VM
guest memory") was sent against the mm tree:
https://lore.kernel.org/all/20260525113737.1942478-1-kas@kernel.org/

== New UAPI documented ==

  UFFDIO_REGISTER_MODE_RWP    registration-mode bit (UFFDIO_REGISTER.2const)
  UFFD_FEATURE_RWP            capability bit          (UFFDIO_API.2const)
  UFFD_FEATURE_RWP_ASYNC      async resolution        (UFFDIO_API.2const)
  UFFDIO_RWPROTECT            install/remove RWP      (new page)
  UFFDIO_SET_MODE             runtime mode toggle     (new page)
  UFFD_PAGEFAULT_FLAG_RWP     new pagefault.flags bit (userfaultfd.2)
  PAGE_IS_ACCESSED            PAGEMAP_SCAN bit        (kernel docs only)

== Series layout ==

  1. userfaultfd.2: overview, registration mode entry, new pagefault
     flag, VERSIONS line, and an "Userfaultfd read-write protect mode"
     section.
  2-3. New UFFDIO_RWPROTECT.2const and UFFDIO_SET_MODE.2const pages.
  4. UFFDIO_API.2const: UFFD_FEATURE_RWP, UFFD_FEATURE_RWP_ASYNC,
     and 1 << _UFFDIO_SET_MODE.
  5. UFFDIO_REGISTER.2const: UFFDIO_REGISTER_MODE_RWP and
     1 << _UFFDIO_RWPROTECT.
  6. ioctl_userfaultfd.2: reference the two new ioctls.

Order: new pages first so the cross-references in patches 4-6 link
to pages that already exist.

Kiryl Shutsemau (5):
  UFFDIO_RWPROTECT.2const: New page
  UFFDIO_SET_MODE.2const: New page
  UFFDIO_API.2const: Document UFFD_FEATURE_RWP{,_ASYNC} and 1 <<
    _UFFDIO_SET_MODE
  UFFDIO_REGISTER.2const: Document UFFDIO_REGISTER_MODE_RWP and 1 <<
    _UFFDIO_RWPROTECT
  ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT and UFFDIO_SET_MODE

Kiryl Shutsemau (Meta) (1):
  userfaultfd.2: Add read-write protect mode

 man/man2/ioctl_userfaultfd.2          |   4 +
 man/man2/userfaultfd.2                | 152 +++++++++++++++++++++++++-
 man/man2const/UFFDIO_API.2const       |  29 +++++
 man/man2const/UFFDIO_REGISTER.2const  |  21 ++++
 man/man2const/UFFDIO_RWPROTECT.2const | 117 ++++++++++++++++++++
 man/man2const/UFFDIO_SET_MODE.2const  |  95 ++++++++++++++++
 6 files changed, 414 insertions(+), 4 deletions(-)
 create mode 100644 man/man2const/UFFDIO_RWPROTECT.2const
 create mode 100644 man/man2const/UFFDIO_SET_MODE.2const


base-commit: 9a4bfd0e50745c2649b6291db40b58e37c9c1c6b
-- 
2.54.0


