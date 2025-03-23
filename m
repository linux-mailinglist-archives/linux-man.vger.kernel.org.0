Return-Path: <linux-man+bounces-2647-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A5BA6D0CC
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 20:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E431516CD55
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 19:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDBD82D7BF;
	Sun, 23 Mar 2025 19:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="Ctb8As0Z";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="yLo3IczC"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.160])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E24F507
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 19:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=81.169.146.160
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742758330; cv=pass; b=hI1SIlmAsUV+O0fGIxe04tkTvwW6IKy0WGZCp/pWZSxK2M2KBAd4PK96I1LbRIGAYgsh/IEq+nAPpElR8nctpAR4mD1k3MLtbO9cFhzu85WXUvmM6cdtaT1a81FsvuQBiAot8INOUGIocCSNMIycFj0ECIM9j+p7Ge6ik99Hixw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742758330; c=relaxed/simple;
	bh=1ObB1huhp0SfXlOmhfxiZnUpVH9tWmP9rNjGgC6tc8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kAsQnAjFY5LwPLYjF4EMdT9GIGceAMvzRhlB8Qgwb7fJ5tpUtX2c/iP+xzoA7sF8LYlLghFX5M9GTGNyRCh2857itx0lyCb4jA845vvbrxrFE0YGmoKqjEk4rPkZvSOlhWe/q4IFjHdfPBf1eZRikR3d2gpJ91KBdqI8brbHgmQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=Ctb8As0Z; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=yLo3IczC; arc=pass smtp.client-ip=81.169.146.160
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1742757962; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=W89MxaMuv8GC22ACNy5f/OzopHcqn7ulgfaULg2mVbIg4pxVDvhRBod7RXyf/l9wEP
    3VmmnwC7lp6oHcWllhD7S3GMHa+avQOfVk09+XVAmqrG0yFxnO7iIiDGMz5GWYfnSPrk
    yeVCtk3KaUbO6humWRkqs7a4IzmcVaCuoIIS/NVDnTO53qZ91Jn6TDBmCecgd9Jttzt0
    dQmptH6rcLKIMVKfGcw0syO0XQ5ItP4TjmuNOtD03/jntQhqSP+v0j1NyGbbVPCWW7vO
    MC5y1Cb9LgToVAFipKHzHMTxG4dv8Ag7DlRveonKxaF8XpKlvxi6TAEutU7T7Mxb/vtD
    lwQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742757962;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=lwofbPMxP6tAvw+Uc/opGQC1jBMU+bciyrEtfAzuxfQ=;
    b=nl+97olvdx1ytIqslQSFpzqYHPlTqlrsrDHVGmZ5U4syQc31IT/HYyb7Md/ngS7bWv
    L8aRLwT+ZcNIzEfxn8dAwVcKPwB5+zdtFN//0VpA+L7ftdgp5GY6N87i8Vt4nkZXwHoo
    xf592hkR3UNYKMj3JWWVVH4Rj2NjiAf8Dr0c5NOe5YzQ0v5r/rBro8fTYnrSHGnj0hYF
    3QlNgAcRDWkcBbnNSHJkhzUbSFScpZT26mrCZmoEjepTH3hh1umpMyb+q0I9qWfik6yl
    3CH1Lw6VsbmiOf1hpGuBLCFwXZEg7I7BZvlp+30K/WiNTK42XnLeY1vgbBLNYhJ4kTbQ
    1IHA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742757962;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=lwofbPMxP6tAvw+Uc/opGQC1jBMU+bciyrEtfAzuxfQ=;
    b=Ctb8As0ZUSTkiwXiRaxnBod8G0c5HMjylvSnKi/xspEOKd5XH1VCe2lHWBMeRA3vOJ
    y9d+bnlLKb6uzIe80KdeQ1u1nyDONQ/xAhB7gv5Mt2mMcBabqxI6uobhGATIHhphQ/I1
    7ozkIPSM+7xWPXtqB+/U3ctfMo1dL/P4Sc++yOjIppatUAW42oveUeZoJv9tiwd9l0I3
    U99jmJhc0bHIpuTHgd/4FOw81I3m1Fqu1g3DLqVkGYkdehZdeyw2/hbmg1JOKLgtM7ju
    HQsW5tZWvW40VmVPUHQgZTiXkQzCjWmiw5pWz28Ii5il3QHZmUhXYxNaotwgThYI2tNU
    1D4A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742757962;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=lwofbPMxP6tAvw+Uc/opGQC1jBMU+bciyrEtfAzuxfQ=;
    b=yLo3IczCD8fv/iyz6GoXy023rHl/TyEB4KpuaH4NoIN5NEexrfFriPg8D0d8oZm/JG
    Dy0wUsWqtuf/6FOckECg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlLnY4jECd2hdUURIbZgL8PX2QiTuZ3cdB8X/nqj+QRTyyQYtrOvJLmqiCHcfbcJjf"
Received: from nimes.localnet
    by smtp.strato.de (RZmta 51.3.0 AUTH)
    with ESMTPSA id N7dcf812NJQ2LhA
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Sun, 23 Mar 2025 20:26:02 +0100 (CET)
From: Bruno Haible <bruno@clisp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject:
 Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and white space
 are not rejected
Date: Sun, 23 Mar 2025 20:26:02 +0100
Message-ID: <2953780.FA0FI3ke8A@nimes>
Organization: GNU
In-Reply-To: <lcm7spgzau3sr4oeaqrdf4qpprekojl6z3sc4nqtvmfkerftze@mu7anfvdcc7y>
References:
 <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <2092070.kUgFBCI4xA@nimes>
 <lcm7spgzau3sr4oeaqrdf4qpprekojl6z3sc4nqtvmfkerftze@mu7anfvdcc7y>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alejandro Colomar wrote:
> 	diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
> 	index c6a2bb9be..4e85f7a30 100644
> 	--- a/man/man3/strtoul.3
> 	+++ b/man/man3/strtoul.3
> 	@@ -182,7 +187,7 @@ .SH VERSIONS
> 	 or to
> 	 .BR strtoul ().
> 	 .SH STANDARDS
> 	-C11, POSIX.1-2008.
> 	+C23, POSIX.1-2008.
> 	 .SH HISTORY
> 	 .TP
> 	 .BR strtoul ()
> 	@@ -190,6 +195,10 @@ .SH HISTORY
> 	 .TP
> 	 .BR strtoull ()
> 	 POSIX.1-2001, C99.
> 	+.TP
> 	+"0b", "0B"
> 	+C23.
> 	+glibc 2.38.
> 	 .SH CAVEATS
> 	 Since
> 	 .BR strtoul ()

These same two hunks could also be applied to strtol.3.

Bruno




