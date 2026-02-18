Return-Path: <linux-man+bounces-5154-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6oQnOckKlWmqKQIAu9opvQ
	(envelope-from <linux-man+bounces-5154-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 01:41:45 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B201525C7
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 01:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A87A3019538
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 00:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3516922541C;
	Wed, 18 Feb 2026 00:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbzksQks"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAA218027
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 00:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771375302; cv=none; b=p0It37cKk2M8WNXdIzf93ax5N7McfCJP6em/lUgToaV3eZUrwyHedpx2d9PlIfslRDLAbJ+/r/WHGRLguU3JR0+Wi0NhibYt79ERuUxUkYF38/+L6V4qqZNduAJkIC1WFMwnp+mweSh0HR55fhRaT0wAf5kmgSQ+eNF44ujsF0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771375302; c=relaxed/simple;
	bh=I5xn1gXQv3vu9PXvTn/nBUrYELP54Hcb+WXh0muuYtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hr00r4Ok7C2lj04CJo93sZ6y+oOvFjReuy7cU1c+wMB6nqzd8n5MftxHiDpCPyv4KEXLS4xSjA46VGFAyqYYnd0GPsGyjHx4dTULguCpVnNCVNbTI3PghIW1aguUSM0xn/SOgQkvAcVp3u6D7Yx73kvVrUZZVKt0IVy1tSZzxes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbzksQks; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 901A7C4CEF7;
	Wed, 18 Feb 2026 00:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771375301;
	bh=I5xn1gXQv3vu9PXvTn/nBUrYELP54Hcb+WXh0muuYtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PbzksQksI8lEGat1yKweCcxDZVipcOhe1uSoGpNdM55oOnRj1E3JPvYbLzpWjgAkl
	 YdiD69ZbfbegcH20KeHU/kt6HZNRPHZ+ytgOg+1+2DBElcLthOOEvdsFERYbx9QTnV
	 lhHZiV44GTdBUsoaKiGHcg+UEpZDy4AsYFhVQGC3l2vKaGP5N7V/PDrAe3N2Q9y5sa
	 GX1dEgLHOtroc1EI3PJgOSRdlt1qzSQ0xM0EWXVkpmWnMjgPuJDa1+dSk6kY4ec9uH
	 N9fqnEx0LgZAa1s5SxvlUcqnh6M+GrSLTtwsgUmx1XxHKxWmNGil5YpdxcretNOzIa
	 8Q+KCMevs7Zgg==
Date: Wed, 18 Feb 2026 01:41:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS section
Message-ID: <cover.1771374933.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5154-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 35B201525C7
X-Rspamd-Action: no action

Hi!

Please let me know what you think of this patch?
Here's how the patch changes the page:

	$ MANWIDTH=72 diffman-git -U10 HEAD
	--- HEAD^:man/man2/futex_waitv.2
	+++ HEAD:man/man2/futex_waitv.2
	@@ -37,57 +37,103 @@ DESCRIPTION
	      ers[].uaddr[0] still contain respective expected values wait‐
	      ers[].val, and if so, sleeps waiting for a FUTEX_WAKE(2const) op‐
	      eration on any of the futex words, and returns the index of a
	      waiter whose futex was woken.
	 
	      If the thread starts to sleep, it is considered a waiter on all
	      given futex words.  If any of the futex values do not match their
	      respective waiters[].val, the call fails immediately with the er‐
	      ror EAGAIN.
	 
	-     If timeout is NULL, the call blocks indefinitely.  Otherwise,
	-     *timeout specifies a deadline measured against clock clockid.
	-     This interval will be rounded up to the system clock granularity,
	-     and is guaranteed not to expire early.
	-
	-     Futex words to monitor are given by struct futex_waitv, whose
	-     fields are analogous to FUTEX_WAIT(2const) parameters, except
	-     .__reserved must be 0 and .flags must contain one of FUTEX2_SIZE_*
	-     ORed with some of the flags below.
	-
	-     FUTEX2_SIZE_U32
	-            .val and .uaddr[] are 32‐bit unsigned integers.
	-
	-     FUTEX2_NUMA
	-            The futex word is followed by another word of the same size
	-            (.uaddr points to uintN_t[2] rather than uintN_t.  The word
	-            is given by .uaddr[1]), which can be either FUTEX_NO_NODE
	-            (all bits set) or a NUMA node number.
	-
	-            If the NUMA word is FUTEX_NO_NODE, the node number of the
	-            processor the syscall executes on is written to it.  (Ex‐
	-            cept that in an EINVAL or EFAULT condition, this happens to
	-            all waiters whose .flags have FUTEX2_NUMA set.)
	-
	-            Futexes are placed on the NUMA node given by the NUMA word.
	-            Futexes without this flag are placed on a random node.
	-
	-     FUTEX2_PRIVATE
	-            By default, the futex is shared (like FUTEX_WAIT(2const)),
	-            and can be accessed by multiple processes; this flag waits
	-            on a private futex word, where all users must use the same
	-            virtual memory map (like FUTEX_WAIT_PRIVATE; this most of‐
	-            ten means they are part of the same process).  Private fu‐
	-            texes are faster than shared ones.
	+PARAMETERS
	+   futex_waitv()
	+     waiters
	+            Futex words to monitor are given by struct futex_waitv,
	+            whose fields are similar to FUTEX_WAIT(2const) parameters.
	+
	+     n      Specify as countof(waiters).
	+
	+     timeout
	+            If timeout is NULL, the call blocks indefinitely.  Other‐
	+            wise, *timeout specifies a deadline measured against clock
	+            clockid.  This interval will be rounded up to the system
	+            clock granularity, and is guaranteed not to expire early.
	+
	+     clockid
	+            Supported clocks:
	+
	+            CLOCK_MONOTONIC
	+            CLOCK_REALTIME
	+
	+     flags  Specify as 0.
	+
	+   struct futex_waitv
	+     .val   Expected value of .uaddr[0].
	+
	+     .uaddr
	+
	+            .uaddr[0]
	+                   See FUTEX_WAIT(2const).
	+
	+            .uaddr[1]
	+                   See FUTEX2_NUMA below.  This field, if it exists,
	+                   must contain a NUMA word, which can be either FU‐
	+                   TEX_NO_NODE or a NUMA node number.
	+
	+                   If the NUMA word is FUTEX_NO_NODE, the node number
	+                   of the processor the syscall executes on is written
	+                   to it.  (Except that in an EINVAL or EFAULT condi‐
	+                   tion, this happens to all waiters whose .flags have
	+                   FUTEX2_NUMA set.)
	+
	+            Programs should assign to .uaddr by casting a pointer to
	+            uintptr_t.
	+
	+     .flags
	+            It must contain exactly one size flag ORed with zero or
	+            more of the other flags.
	+
	+            Size flags
	+
	+                   FUTEX2_SIZE_U32
	+                          .val and .uaddr[] are 32‐bit unsigned inte‐
	+                          gers.
	+
	+                   FUTEX2_SIZE_U8
	+                   FUTEX2_SIZE_U16
	+                   FUTEX2_SIZE_U64
	+                          These are defined, but not supported (EIN‐
	+                          VAL).
	+
	+            Other flags
	+
	+                   FUTEX2_NUMA
	+                          The futex word is followed by the NUMA word,
	+                          of the same size (.uaddr points to uintN_t[2]
	+                          rather than uintN_t).
	+
	+                          Futexes are placed on the NUMA node given by
	+                          the NUMA word.  Futexes without this flag are
	+                          placed on a random node.
	+
	+                   FUTEX2_PRIVATE
	+                          By default, the futex is shared (like FU‐
	+                          TEX_WAIT(2const)), and can be accessed by
	+                          multiple processes; this flag waits on a pri‐
	+                          vate futex word, where all users must use the
	+                          same virtual memory map (like FUTEX_WAIT_PRI‐
	+                          VATE; this most often means they are part of
	+                          the same process).  Private futexes are
	+                          faster than shared ones.
	 
	-     Programs should assign to .uaddr by casting a pointer to
	-     uintptr_t.
	+     .__reserved
	+            Specify as 0.
	 
	 RETURN VALUE
	      Returns an index to an arbitrary entry in waiters corresponding to
	      some woken‐up futex.  This implies no information about other
	      waiters.
	 
	      On error, -1 is returned, and errno is set to indicate the error.
	 
	 ERRORS
	      EFAULT
	@@ -106,33 +152,32 @@ ERRORS
		     ject——that is, the address is not aligned appropriately for
		     the specified FUTEX2_SIZE_*.
	 
	      EINVAL
		     flags was not 0.
	 
	      EINVAL
		     n was not in the range [1, FUTEX_WAITV_MAX].
	 
	      EINVAL
	-            timeout was not NULL and clockid was not a valid clock
	-            (CLOCK_MONOTONIC or CLOCK_REALTIME).
	+            timeout was not NULL and clockid was not a valid clock.
	 
	      EINVAL
		     *timeout is denormal (before epoch or tv_nsec not in the
		     range [0, 999'999'999]).
	 
	      EINVAL
		     Any waiters[].flags field contains an unknown flag.
	 
	      EINVAL
	-            Any waiters[].flags field is missing a FUTEX2_SIZE_* flag
	-            or has a size flag different than FUTEX2_SIZE_U32 set.
	+            Any waiters[].flags field is missing a size flag or has an
	+            unsupported one.
	 
	      EINVAL
		     Any waiters[].__reserved field is not 0.
	 
	      EINVAL
		     Any waiters[].value field has more bits set than permitted
		     than the size flags.
	 
	      EINVAL
		     FUTEX2_NUMA was set in waiters[].flags, and the NUMA word
	@@ -151,25 +196,20 @@ ERRORS
	 
	      EAGAIN or EWOULDBLOCK
		     The value in .uaddr[0] was not equal to the expected value
		     .val at the time of the call.
	 
	      EINTR  The operation was interrupted by a signal (see signal(7)).
	 
	 STANDARDS
	      Linux.
	 
	-NOTES
	-     FUTEX2_SIZE_U8, FUTEX2_SIZE_U16, and FUTEX2_SIZE_U64 where .val
	-     and .uaddr[] are 8, 16, or 64 bits are defined, but not imple‐
	-     mented (EINVAL).
	-
	 HISTORY
	      Linux 5.16.
	 
	 EXAMPLES
	      The program below executes a linear‐time operation on 10 threads,
	      displaying the results in real time, waiting at most 1 second for
	      each new result.  The first 3 threads operate on the same data
	      (complete in the same time).  ! indicates the futex that woke up
	      each futex_waitv().


What do you think?  I think the formatted page is more readable.
The source gets more complex, but I could live with that.


Cheers,
Alex


Alejandro Colomar (1):
  man/man2/futex_waitv.2: Move text to a new PARAMETERS section

 man/man2/futex_waitv.2 | 157 ++++++++++++++++++++++++++---------------
 1 file changed, 99 insertions(+), 58 deletions(-)

Range-diff against v0:
-:  ------------ > 1:  22d6ad793c4c man/man2/futex_waitv.2: Move text to a new PARAMETERS section

base-commit: ee4402e21d91c285f5f85071713985f2be7ac412
-- 
2.51.0


