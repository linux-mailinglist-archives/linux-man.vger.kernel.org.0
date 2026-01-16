Return-Path: <linux-man+bounces-4815-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B41F1D2F51A
	for <lists+linux-man@lfdr.de>; Fri, 16 Jan 2026 11:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6C3E3005302
	for <lists+linux-man@lfdr.de>; Fri, 16 Jan 2026 10:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D791335BDD7;
	Fri, 16 Jan 2026 10:11:09 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1199830B524
	for <linux-man@vger.kernel.org>; Fri, 16 Jan 2026 10:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558269; cv=none; b=At1j5nO37eveOOXD5TPqs7VZM3dxZcx2X6vetsTmQOTyg3QH8xCK04XBo8XIX/feufizcdsKuNhHL5qPGt1yXntxfwcOEVFVMx12+zHfxN04Vl6OlUWysBQAXp7Dl4GR605bMX4npKmEFTYCNf4mAdEPW1umfwA9I8ER18MLYTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558269; c=relaxed/simple;
	bh=+VQbanDdeO9zIlYa/TEhe4zvuSqMYf45gksAk4Phy0U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fiup07xj4AlJF18f+YNIjRFkPcNg/B0tLv4SqTJTaLZucg6Rq6rKFPPn+9hO6aWQFFQPb419hVhx/fCsDL2VybBR55RkP24PH+LdGzjNoiXLSRZyqUnyq4fv//c9avnw1iUYCjUqVR7Oo5ceDBxwc0whNNr25Zz9yUD9uFDszYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBB3F1515;
	Fri, 16 Jan 2026 02:11:00 -0800 (PST)
Received: from arm.com (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80FDF3F694;
	Fri, 16 Jan 2026 02:11:06 -0800 (PST)
Date: Fri, 16 Jan 2026 10:11:03 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florent Revest <revest@chromium.org>,
	Helge Kreutzmann <debian@helgefjell.de>,
	mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MDWE.2const
Message-ID: <aWoOt_PCGehF1f_G@arm.com>
References: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>
 <aU2jhFY0ueqVHUJQ@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aU2jhFY0ueqVHUJQ@devuan>

Hi Alejandro,

On Thu, Dec 25, 2025 at 09:54:46PM +0100, Alejandro Colomar wrote:
> On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> > 
> > Issue:     mapping protections → mapping ?
> > 
> > "New memory mapping protections can't be writable and executable.  Non-"
> > "executable mappings can't become executable."
> 
> That text was added in
> 
> 	commit 457ca4a9ae3eae9835a5c011851c4eb88b49d322
> 	Author: Florent Revest <revest@chromium.org>
> 	Date:   Wed Oct 11 13:47:44 2023 +0200
> 
> 	    prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
> 	    
> 	    Memory-Deny-Write-Execute is a W^X process control originally introduced
> 	    by Joey Gouly.  I'm the author of the PR_MDWE_NO_INHERIT flag.
> 	    
> 	    Signed-off-by: Florent Revest <revest@chromium.org>
> 	    Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> So let's ask the author and reviewer.  The manual page says:
> 
> 	$ mansect DESCRIPTION man/man2const/PR_SET_MDWE.2const \
> 	| MANWIDTH=64 man /dev/stdin \
> 	| cat;
> 	PR_SET_MDWE(2const)                         PR_SET_MDWE(2const)
> 
> 	DESCRIPTION
> 	     Set the calling process’ Memory‐Deny‐Write‐Execute protec‐
> 	     tion  mask.  Once protection bits are set, they can not be
> 	     changed.
> 
> 	     mask must be a bit mask of:
> 
> 	     PR_MDWE_REFUSE_EXEC_GAIN
> 		    New memory mapping protections  can’t  be  writable
> 		    and  executable.  Non‐executable mappings can’t be‐
> 		    come executable.
> 
> 	     PR_MDWE_NO_INHERIT  (since Linux 6.6)
> 		    Do not propagate MDWE protection to child processes
> 		    on fork(2).   Setting  this  bit  requires  setting
> 		    PR_MDWE_REFUSE_EXEC_GAIN too.
> 
> 	Linux man‐pages (unreleased) (date)         PR_SET_MDWE(2const)
> 
> Do you agree with the wording fix proposal?

Just to make sure I understand, do you want to change "mapping
protections" to "mapping" in the PR_MDWE_REFUSE_EXEC_GAIN description?
Fine by me but I would use "mappings" (plural) instead. It matches the
following sentence.

-- 
Catalin

