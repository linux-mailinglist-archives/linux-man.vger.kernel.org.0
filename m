Return-Path: <linux-man+bounces-328-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8668213A2
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B28FA282757
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 11:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A181FB0;
	Mon,  1 Jan 2024 11:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCLh/ZXJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC06C20FD
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 11:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D958C433C7;
	Mon,  1 Jan 2024 11:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704109986;
	bh=TRZHEqBuCvahwsnvCbZ63RNcwt9Z0Uae2ry//jS8IwM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JCLh/ZXJWgpbS4vcRZcANgA7D8HwVdFNOuGby9wfp4277xW0qLVRrKVsY1YDWPPBR
	 geBIJA7cDeTux+pyeN0t0aG9/u4aEIr39Qt3q6pwHCy/AdHQUEpp9+7HA7YH9dOGOA
	 do83C5Qw8kkcP3B/sFSC/tb0Seuevp2+cERVwVNjgZITS8ODqsEHGMtRvQINdp0P8c
	 haPAP4IpY2wzmmqUZCcvTVydDr3C1vg2lu7KMASKexPVwbBN78/8kFAZzCUYfPBFV2
	 eB+gJKX3T4rMHBBydFjcxMNep4UDdgpIIXxUW5c2KoMYn3eqdSf2Os6SN7NsHX2Iwp
	 r6GDWMjbVAYQQ==
Date: Mon, 1 Jan 2024 12:53:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 218018] dl_iterate_phdr should mention Elf64_Phdr (in
 addition to Elf32_Phdr).
Message-ID: <ZZKnn2Iyn2pWpbxy@debian>
References: <bug-218018-11311@https.bugzilla.kernel.org/>
 <bug-218018-11311-B8AwJ7hI24@https.bugzilla.kernel.org/>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <bug-218018-11311-B8AwJ7hI24@https.bugzilla.kernel.org/>

On Wed, Dec 27, 2023 at 04:47:48PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=218018
> 
> --- Comment #2 from Paul Pluzhnikov (ppluzhnikov@google.com) ---
> (In reply to Rajesh from comment #1)
> 
> > Do you think the following would be helpful.
> 
> Sure.
> 
> > Replacing "These program headers are structures of the following form:" with
> > the following
> > 
> > The ELF program header is described by the type Elf32_Phdr or Elf64_Phdr
> > depending on the architecture. Following is an example of 32 bit
> > architecture. Refer to elf (man elf) for more information on 64 bit
> > architecture.
> 
> I suggest deleting the last 4 words, i.e.
> 
>   Refer to elf (man elf) for more information.
> 
> since "man elf" describes both Elf{32,64}_Phdr in a bit more detail.

I suggest creating link pages Elf32_Phdr(3type) and Elf64_Phdr(3type)
both of which link to elf(5).

> 
> -- 
> You may reply to this email to add a comment.
> 
> You are receiving this mail because:
> You are watching the assignee of the bug.

-- 
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

