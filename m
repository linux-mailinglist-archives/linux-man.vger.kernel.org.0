Return-Path: <linux-man+bounces-5603-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGrdJhikFWprWwcAu9opvQ
	(envelope-from <linux-man+bounces-5603-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:46:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 904655D6C99
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:45:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9A493301C9F3
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 13:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C6403FB7D3;
	Tue, 26 May 2026 13:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="1/uQAB8g";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="blyTPraX"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-c3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA9B3FB07E
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 13:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802934; cv=none; b=NRJZ1WWs51qqaTJxWO9evDla5goZh8XO+rRjaZbqE9SVA1Mx/U4tj+BSP8i5HI+Yxo0Xytz3c0n0Uaup/0dWvH5mPOJ6YNVG2nzzID9baqGgZtmrP9NwfN84E9wyG1Bg9JUmOcLpHCHlamq3QAdWJ8+TKkJDlOjkek3eSG4JlwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802934; c=relaxed/simple;
	bh=A+lgiD1Q4JQT1iS6t4EqSdfqrPxQ0qVMnEK5qfioDeM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d9PrGyZnwt0327ij0CMinBkW0bbtX0HtCF+cq73HT+oem8zlFaIxpZ4AvUs7/ZINXcQ6uzcNlEln06/KL7+xGZOs7iD1SHBhkbbFxnrYrCtwMOxiMsLOjL0dFsfob4DKLWs3D5QISFH+KrgiswL7ffAhLPnSHprMM8wO+ddnQRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=1/uQAB8g; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=blyTPraX; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id 97B7E1D00111;
	Tue, 26 May 2026 09:42:11 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Tue, 26 May 2026 09:42:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779802931; x=
	1779889331; bh=j8+Wgub2qqUHY4eu6PfZmMEEUj7nDz6IAC4QMYExiwk=; b=1
	/uQAB8g9zJChvy2emN2rwIwE81ztEhNZLebzz5eNfQsfCU35x/xUSE8dcZOkPJK8
	sq3je6NWM2QqtPCNbI9YT62kwtpjbJiUyHV9n1X2SHHHYF+FV+PHqXtFkMUP5WTC
	tYGFgSEMR8S3J+9tCPy949o87yzpRtbyjiVmaf/UEVY700StOeUsEe7miZgUhFuD
	F+pZeAT4/B6cDoPt2KndrHm5yVhA53SbMX+oTAVGFHONJvN3FNNBKNXAo2nDedAP
	NVg8aHnKixLnQMQzY53Y1YwvM3YjgXYbs1f1n8uphNenuuKgGc1Hw9KbUa21OHq6
	dRqNDScHWdzEXXrS1Dwsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779802931; x=1779889331; bh=j
	8+Wgub2qqUHY4eu6PfZmMEEUj7nDz6IAC4QMYExiwk=; b=blyTPraXT6oiGskrI
	BhkgMq1qybDHiPIgw6pRVIE31zAGAFhOLdDHgGeuEtHewhSGSiIwIkA853Jao1iA
	aqb9S/oa7mcVWsbePfaaQj+c3vHNSSxjaC2wqjaO3VFCnLZ8PLdUMkjRDol8bYZf
	W4O+dvWK0ukhk4x1y9Q4kpR/ifk2GeyIxZkLxryHzCnDfqRv5eBx8WhUpOODPbL8
	jqFKRqWJglqmaOydToebODEIId7XOEmtxkvEVLVQX5XkLar1/9FQTLo0f8F1S/an
	5d/zJ8UbzA3UnbBQ1iu+x5Orh80dDPGC+ioj+iU91v9yCp3MKgJS5h59RqiOLYpp
	Ah9Ug==
X-ME-Sender: <xms:M6MVagtn3NGqxV5c5sawSSSU8u65XhYwpZ7sOAFc2N5FiltMMa48ug>
    <xme:M6MVaqCoW1-QKEwy0QVdF65wVZOlGzQBJ1FX54FUwxSCJuRSCIfaaZ_LW454eDsE-
    c--L3_de--e-o_9OVedgS1Zzk0ijYFI5x8o_4zgAAIpelcXJ_uYjiA>
X-ME-Received: <xmr:M6MVagPFrJoga4Plf9Qpj-B8h7UvRa4Sh-esZbjkI32mmaSe14RVD1bO31HpdA>
X-ME-Proxy-Cause: dmFkZTGCG9NSIqjaJ0FcAKWnlQsiJh00bpn2bwYqat0i/9Uj870iJ2+nuGwq5UQ0hWiBWC
    0O4pOtGl11/rWzrQ8JpRQNWQ/o+KucL1HWCb9MN/J5ac+cionE9x/LUkgMMmmDj24Qvo9M
    hAZY128EGQ+FrSOzPDtP3gMcTwzb/bnhrLF81xwhJfW7FTkHao26SlYjjoQl4gZGSY72aR
    dCMuOs/9hNimjuTsXqn3/2Evhg4jhIamSMbZZ1fWRqEJCgWuaS5gf6qk5ClxVVi+zrQfln
    ASwmMqCuP6peEp5E4eWDL3vlj9B1Oeggrsny5nI39Pg5PAENrkAwSUmFirfgbE1IAAQaPZ
    m7r9+cUZIultUM04t9+hWZrfYCFcad45VMlsgbRuHzouVcpMokV1aOzdQpC5KSbHadSAL4
    I5KKZgdN+Rsy7HUg8PO+lLScTkvk5RaJWJDjWchcnQouXqotHb/4vLlEbPMgEcmN98lQop
    HY3jVeAUCBh/kKaHtDdhCKMTT5fwdJwsRKvnbA4fE8PLS3HQ8wYgrBfozM0T9Ktvp6xjCr
    562D/MP4fOnSQVESOXb2IJKBHRf/+7alqoy2kd+DU+Cc3671wlAoCIAWyoZ/UEipol0u5U
    ctIgkxR+LJiDJlCK0UEkXAzoZ8n9iTiFM5ODcevfq6tiIElYzpsk9oprc+bA
X-ME-Proxy: <xmx:M6MVaqCVyX26CtN4yoSYu99H0hnq5fLEhDUuMLAvd0uH8uIr5CQMdw>
    <xmx:M6MVah5N4LbNud-p2t4ZodrJo-QfYSuWYRS6uv5JfC4R-zd6hluabA>
    <xmx:M6MVak5BdFf1CZHF1eJpJbImCXG3iY40EuApMPtgp_5pTyYRaF3yfw>
    <xmx:M6MVajRL1BrBXQZ0T_lB64k-yXtsnK1YKaVhUkOXd5TuqAx0vqei6w>
    <xmx:M6MVah4qEqq4poq0PSkzhxz3aVD2xiHdUbJ7G1g3OPZY85qZhvRhZ8_z>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 May 2026 09:42:10 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	Kiryl Shutsemau <kirill@shutemov.name>,
	Kiryl Shutsemau <kas@kernel.org>
Subject: [PATCH v2 3/6] UFFDIO_SET_MODE.2const: New page
Date: Tue, 26 May 2026 14:41:46 +0100
Message-ID: <20260526134149.2831720-4-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260526134149.2831720-1-kirill@shutemov.name>
References: <20260526134149.2831720-1-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5603-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 904655D6C99
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the UFFDIO_SET_MODE ioctl (since Linux 7.2). It toggles
userfaultfd feature bits at runtime; currently only UFFD_FEATURE_RWP_ASYNC
is toggleable, and enabling it requires UFFD_FEATURE_RWP to have been
negotiated at UFFDIO_API time.

Describe the uffdio_set_mode struct (enable/disable pair, must not
overlap), the serialization against in-flight page faults that lets a
single userfaultfd switch between async detection and synchronous
eviction without re-registering its ranges, and the EINVAL/EFAULT
errors returned by the kernel.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 man/man2const/UFFDIO_SET_MODE.2const | 98 ++++++++++++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 man/man2const/UFFDIO_SET_MODE.2const

diff --git a/man/man2const/UFFDIO_SET_MODE.2const b/man/man2const/UFFDIO_SET_MODE.2const
new file mode 100644
index 000000000000..b71632011a4c
--- /dev/null
+++ b/man/man2const/UFFDIO_SET_MODE.2const
@@ -0,0 +1,98 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH UFFDIO_SET_MODE 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+UFFDIO_SET_MODE
+\-
+toggle userfaultfd runtime mode bits
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " constants */"
+.B #include <sys/ioctl.h>
+.P
+.BI "int ioctl(int " fd ", UFFDIO_SET_MODE, struct uffdio_set_mode *" argp );
+.P
+.B #include <linux/userfaultfd.h>
+.P
+.fi
+.EX
+.B struct uffdio_set_mode {
+.BR "    __u64  enable;" "   /* Feature bits to set */"
+.BR "    __u64  disable;" "  /* Feature bits to clear */"
+.B };
+.EE
+.SH DESCRIPTION
+Toggle userfaultfd features that may be flipped at runtime.
+.P
+Bits set in
+.I enable
+turn the named features on;
+bits set in
+.I disable
+turn them off.
+The two fields must not overlap.
+Today only
+.B UFFD_FEATURE_RWP_ASYNC
+is a valid bit in either field;
+any other bit causes the ioctl to fail with
+.BR EINVAL .
+Enabling
+.B UFFD_FEATURE_RWP_ASYNC
+also requires
+.B UFFD_FEATURE_RWP
+to have been negotiated at
+.BR UFFDIO_API (2const)
+time.
+.P
+The operation is serialized against in-flight page faults,
+so the new mode takes effect
+only after every fault that started before the call has finished,
+and any fault that starts after the call observes the new mode.
+This allows a single userfaultfd
+to switch between lightweight async detection
+and synchronous eviction
+without re-registering its ranges.
+.SH RETURN VALUE
+On success,
+0 is returned.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EINVAL
+A bit other than
+.B UFFD_FEATURE_RWP_ASYNC
+was specified in
+.I enable
+or
+.IR disable ;
+the two fields overlap;
+or
+.B UFFD_FEATURE_RWP_ASYNC
+was requested without
+.B UFFD_FEATURE_RWP
+having been negotiated.
+.TP
+.B EFAULT
+.I argp
+refers to an address that is outside the calling process's
+accessible address space.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 7.2.
+.SH EXAMPLES
+See
+.BR userfaultfd (2).
+.SH SEE ALSO
+.BR ioctl (2),
+.BR ioctl_userfaultfd (2),
+.BR userfaultfd (2)
+.P
+.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
-- 
2.54.0


