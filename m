Return-Path: <linux-man+bounces-5600-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOZSDoikFWprWwcAu9opvQ
	(envelope-from <linux-man+bounces-5600-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:47:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBDE5D6D10
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:47:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7CD333035BAA
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 13:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F693BB111;
	Tue, 26 May 2026 13:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="O4qHJa0L";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="bPwWgEBD"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-c3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFAD3A6B8D
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 13:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802928; cv=none; b=telmN6NDOguuOcK/EU3LkqoNaqBLiishiHF/XQOODSHkqoCUjGBsnpwQAOoJXlZ4XMS4BUVTvtefO9rTphuuIEA8/pbHcCtn82iAm3CUROTP6rb4MYc4zNTwO19ZPEYn057yZ2IYZkyDAGpcg6bIwfLCwLjVqMMFmrotfhXMIrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802928; c=relaxed/simple;
	bh=8KKFftTG7lX4MqTxWrfERT6kJ4hBPFsY2N4FS2i3DO8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cEUFPZRlvQXbJQXEoakZ29aqSBEO0kM3NtWvrEQLeGRxaxAZblrE7Ys0L23pUapWHc9ue5h57Fq2STLX3ZnR8Zfdk6y/7mc2X1H4p2iVQsSk/KXjrzTTIJ/f24lZENtTz2cxIwoUUW9rh7I6vBKjjLRtueaUN3FjhE5H+cv76oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=O4qHJa0L; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=bPwWgEBD; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id 281201D00136;
	Tue, 26 May 2026 09:42:05 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Tue, 26 May 2026 09:42:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1779802924; x=1779889324; bh=zBUCE6XPDU
	oHMvoGi0VrfXMvy96k6/ubKzatZEhS3eQ=; b=O4qHJa0LlCiBQM9u4ohssAKvF4
	6YvJRo0oBAEGVRz73X3dfkoHwlPBGeUUGRd5ScYRI7/6usLw2qu/iFels+zL7bn6
	BfKKaudsSKoE6F/DlJhwsUqefHDErOIP261sTy4EEZu+YdDsbVuI3jgLXogd840M
	WreVcAKU7PmCW602vMDfS8X0zy9VL2xXYCgtgAI/UDYqdHGPl58KaMGZRlTDoMv6
	pAXehyBECCkqI3BisPETtFUJVDFOq82JEwjD8R35cRF8iXBmdtK2j1Nb4v5M/IIk
	oVR8hHQQV1xw80AA3YpFO9dQ7YyC6dj8qrhVnOYsNlJfdhy0YXXCK+CbkR/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1779802924; x=1779889324; bh=zBUCE6XPDUoHMvoGi0VrfXMvy96k6/ubKza
	tZEhS3eQ=; b=bPwWgEBDK4QVe2+iR6y5L0saHMRvx3tITyddIxveYXoEgl6Ufnd
	44RkG54JKIjnkEPaqVyLAP+8MPbvTT0JY8nrAhoibSeDcm+ycBj5WbCR0upqur8v
	qbweAOy/9usmAhx/SdLXL4lzM7H2g5CUnV8YNrW2UMVJsPloyv+gLZmQYzBsXoel
	fppEeupb8YfusfH2HYiSFN9T/TxI+7GS06iwQrrTv9VxwGu9XiCphdfeRMXPr7fl
	2uu6GdgaNIJqrcDquZOXlSjzOgriCiygC2loy/8fGo4yfUG5QfHFvAGfmvVlc1ht
	QnE5zsQCe96EoXU+lxMPzI+U1DeLa2VcwlQ==
X-ME-Sender: <xms:LKMVaqATU354xalLDM9nlBwdb4GpoFOpSbsC-64VWySQQ0sWEqy0bw>
    <xme:LKMVanH7NHesIFfpMKEESAJ-JRbqFAI1QegGX_XnFsDVz_zwdEZo5fsiOgiH_zep-
    SeiE_cKKD_hnElxhkxTOGdKB1GQz6kT8zq4xP2bZs1bPIjHFJ_JFtS3>
X-ME-Received: <xmr:LKMVahNqwKxM-dz-ysnIDvarxzkmMoMaf0i7no72JDWYDjmtlpBPxJIHMtvmtw>
X-ME-Proxy-Cause: dmFkZTFmW/hFcTNnzxlDjoX7gVDxK53FvI9aWc6JsyW51xajIju1oU3qhaizmUtiElI+lL
    r6xTZMSyW3U3HRBcZUReHyqEMJWuCVat5liN1gg/9LzPivQfiTe4sCzlpadKLK8GO17j13
    yEQUMAUIJPxMaPxsJll6LpCCfFttl9LX07IbdLY/0MTxhIk64cy5ztiUivEvBJuGxwOSTP
    65z9K8iL2sQtBLOt1k7QiK0CBqKnbOivXhXhmkmUqIC86fj9Q/tLRbmA770O08ofypFZxx
    5XngxhJHou7y+BegZq1/PIRykPwIlZ/MZxupfTJ806rYmB/sPPXQk+LMkZoFRGAqQKTGka
    a/LRW4kklAF0HfwEzb0rbQZXhG05KyRrU2Q6KtKyz7MrX5PxGLnuaDT1U5L2LLi6bC56MJ
    Bed0WrEI0KFWrYtbPl31U0YCV0vhUqhsKXuh0cB7ihPsiTXgiUcXDUF4uxWhy9v4Ier7p7
    mTkFkTLxYHH8U2Tiz9xO1dDY4tfREIV4p8Xf0O7gRmX0XUn+3zY6MtWeaOOJ0teS173uTT
    oaxj8rJyRBUXO6lt1VWDUFuoofvEfVpG9AyZQNzJjifhpOqeJMcWJlyqbL4GTBHpCvWDBf
    yUT8wK0HVHbU7MNet/qZJ4y4lpBFpEwiwsSkSE/okaSN5ZsBStpXTM7EwspQ
X-ME-Proxy: <xmx:LKMVao7xSr4x7gxd5utLlRfq8R-YHPpxFP013RtHLjuV_LidFBSjLw>
    <xmx:LKMVakidVq9Kw1J3zXgB2mQUt5h3mugKkffwMRywZYvXVgiqzBr51Q>
    <xmx:LKMVatddMfl0YNzNp6sa8NSzTpombhqRZ7t8kxn0BudstL6ZoFZaiQ>
    <xmx:LKMVaswajzF9jGAjPyQ9n7KyC9UagUkHMR-jZ47tpjb6Tf5tkZy3Og>
    <xmx:LKMVapYp3G61uiIapETj7FaOuCmLA7hncas_6niO-LoLPAMQGytIK9Jf>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 May 2026 09:42:04 -0400 (EDT)
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
Subject: [PATCH man-pages v2 0/6] userfaultfd: document read-write-protect mode
Date: Tue, 26 May 2026 14:41:43 +0100
Message-ID: <20260526134149.2831720-1-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5600-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shutemov.name:mid,shutemov.name:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 7CBDE5D6D10
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series documents userfaultfd read-write-protection tracking
(UFFDIO_REGISTER_MODE_RWP), a working-set tracking mechanism for VM
guest memory landing in Linux 7.2.

v1: https://lore.kernel.org/all/20260525122816.1956804-1-kirill@shutemov.name/

The matching kernel series ("userfaultfd: working set tracking for
VM guest memory") v5 is at:
  https://lore.kernel.org/all/20260526130509.2748441-1-kirill@shutemov.name/

== Changes since v1 ==

Addresses Alejandro Colomar's review:

  - \(em -> \[em] with parenthesis-style spacing.
  - Semantic newlines.
  - "user space" two words; "By default,".
  - "returns EINVAL" -> "fails with EINVAL".
  - "read-write-protect mode" hyphenation (1/6 subject too).
  - .PP -> .P; awkward .RB MADV_DONTNEED line -> colon-list;
    one identifier per .RB line in HISTORY.

mandoc -Tlint clean on all six files. Mike Rapoport's Acked-by
from v1 picked up.

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
     flag, VERSIONS line, and an "Userfaultfd read-write-protect
     mode" section.
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
  userfaultfd.2: Add read-write-protect mode

 man/man2/ioctl_userfaultfd.2          |   4 +
 man/man2/userfaultfd.2                | 174 +++++++++++++++++++++++++-
 man/man2const/UFFDIO_API.2const       |  31 +++++
 man/man2const/UFFDIO_REGISTER.2const  |  24 ++++
 man/man2const/UFFDIO_RWPROTECT.2const | 122 ++++++++++++++++++
 man/man2const/UFFDIO_SET_MODE.2const  |  98 +++++++++++++++
 6 files changed, 449 insertions(+), 4 deletions(-)
 create mode 100644 man/man2const/UFFDIO_RWPROTECT.2const
 create mode 100644 man/man2const/UFFDIO_SET_MODE.2const


base-commit: 9a4bfd0e50745c2649b6291db40b58e37c9c1c6b
-- 
2.54.0


