Return-Path: <linux-man+bounces-5474-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOJtDE9M/WmUaAAAu9opvQ
	(envelope-from <linux-man+bounces-5474-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 04:37:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9A34F0DD9
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 04:37:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 486E7302A506
	for <lists+linux-man@lfdr.de>; Fri,  8 May 2026 02:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0625627FB25;
	Fri,  8 May 2026 02:32:45 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from hergotha.csail.mit.edu (hergotha.csail.mit.edu [207.180.169.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035AB258CD7
	for <linux-man@vger.kernel.org>; Fri,  8 May 2026 02:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.180.169.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778207564; cv=none; b=aZdT5a3L2Tlg0/mQckv8WgviR/QqIVvPUy5uT74nNQ4Om+IBAHcFpJbN+O3JXL3PW88cmIckxUbmYuAOjgBxhySrDoy/n9NKpLLbA84Txnn5h2BplxLX6ah2thgAuyR3MaVderw7gWYJ6saA/Ni4ByNy3+oeoi6puR6/V7UApUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778207564; c=relaxed/simple;
	bh=DzjYWBj3ZMFnoZviq2FAlVyjU4i47KRmSQVB7HvHli4=;
	h=MIME-Version:Content-Type:Message-ID:Date:From:To:Cc:Subject:
	 In-Reply-To:References; b=ZxKaom1KYnUK9LckPPpdGcisr1ib6xZxogZiySFsos8hzJ3rOPcP3m2dX5ORlqjIfnYX7/KvAZmkBSuMeGm8WxeBblSidskZos7DjTXTpdnZ17W6rkaE8z9xScW0N7yYqPossUKlWzyTBW9hCmV0p9IW5Yvn9E6lBhmhI5rAIZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bimajority.org; spf=pass smtp.mailfrom=hergotha.csail.mit.edu; arc=none smtp.client-ip=207.180.169.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bimajority.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hergotha.csail.mit.edu
Received: from hergotha.csail.mit.edu (localhost [127.0.0.1])
	by hergotha.csail.mit.edu (8.18.1/8.18.1) with ESMTPS id 6482WUxC085949
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Thu, 7 May 2026 22:32:30 -0400 (EDT)
	(envelope-from wollman@hergotha.csail.mit.edu)
Received: (from wollman@localhost)
	by hergotha.csail.mit.edu (8.18.1/8.18.1/Submit) id 6482WUbL085948;
	Thu, 7 May 2026 22:32:30 -0400 (EDT)
	(envelope-from wollman)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <27133.19262.184587.893784@hergotha.csail.mit.edu>
Date: Thu, 7 May 2026 22:32:30 -0400
From: Garrett Wollman <wollman@bimajority.org>
To: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man <linux-man@vger.kernel.org>,
        kleink <kleink@netbsd.org>
Subject: Re: mkstemp(3)
In-Reply-To: <CAKH6PiWALYokfQtUdmhWPXJpyTSHKFAruZPd1qjG9W71om7DPg@mail.gmail.com>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
	<afzrREof611q7MIX@devuan>
	<27133.498.654796.822374@hergotha.csail.mit.edu>
	<CAKH6PiWALYokfQtUdmhWPXJpyTSHKFAruZPd1qjG9W71om7DPg@mail.gmail.com>
X-Mailer: VM 8.3.2 under 30.2 (amd64-portbld-freebsd14.4)
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.4 (hergotha.csail.mit.edu [0.0.0.0]); Thu, 07 May 2026 22:32:30 -0400 (EDT)
X-Rspamd-Queue-Id: 7B9A34F0DD9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[bimajority.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wollman@bimajority.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5474-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,dartmouth.edu:email]
X-Rspamd-Action: no action

<<On Thu, 7 May 2026 21:34:03 -0400, Douglas McIlroy <douglas.mcilroy@dartmouth.edu> said:

> Posix System Interfaces Section 2.2 tells me that I should #define
> _POSIX_C_SOURCE before #include <stdlib.h>. That fact is missing from
> Linux's man 3 mkstemp.  Arguably the Posix description of mkstemp
> should mention it, too.

<div class="standards-lawyering">
Conveniently, POSIX.1-2008 removed mkstemp from the XSI option and
made it standard (shaded only CX and not XSI) so in 2008 and newer,
you don't have to define _XOPEN_SOURCE.  You do have to set the
correct _POSIX_C_SOURCE value for the standard your implementation
confirms to, which currently means that you can only use C17 in
POSIX.1-2024 and cannot use C23 at all.

This may be the source of the confusion: for ISO C, "the
implementation" is the compiler, header files, and standard library,
so your C23 compiler ships with versions of those that meet the
requirements of the C23 standard.  For POSIX on the other hand, "the
implementation" is the entire operating system, which must support one
and only one specific version of ISO C.  It is up to your operating
system supplier (e.g. Linux distro packager) to build a <stdlib.h>
that meets the requirements of POSIX if they want to claim to be
POSIX-compliant.  (Very likely they don't actually care about formal
compliance.)

An application that uses C23 features (or indeed that is compiled with
anything other than the POSIX.1-2024 `c17` utility) is not a
conforming POSIX application and its behavior is undefined.  (Likewise
POSIX.1-2008 requires compilation with the `c99` utility, since that
standard is aligned to C99.)
</div>

-GAWollman


