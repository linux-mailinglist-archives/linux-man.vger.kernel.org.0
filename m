Return-Path: <linux-man+bounces-2095-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB4D9E0D60
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 21:54:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15EDD2836CE
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 20:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A565A1DEFE8;
	Mon,  2 Dec 2024 20:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffzpUR4f"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA05166F3D;
	Mon,  2 Dec 2024 20:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733172838; cv=none; b=JSze3uuRCvHGLX2OgK4baQEHPKuj0bMRcs1iDKyEo8+MHAV1+9Ii/yWeSW5d4uiUz0y/v9J26Qk2atJw0d8DKomrLanjhOsWqI21WygJukvjuryvTnWSL5gXqy/JDVzVBaWuNkuE9IMbc1hjD/sY7o6NhxW9XejYUKteriFKHj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733172838; c=relaxed/simple;
	bh=2laIjz9xsicujtniaPL4cc3Nj5U/lK+5qEsI2trrT2Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D0gsS0Zo9dLprfcZOFXNTgGWodYfN4eEYm1MJwowPeIi+QdVLdoC182aKR1tcY6jJBY8JqvfrQDGWKVXQPNaBN8NnmLLdcx3TaiUml67bK3jrD3tRUtDLeKhsL9n+E55szjs4V9eDeGPlClNbCuNzIQpI4iIAiLIdUBPo9dpfeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffzpUR4f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E305C4CED1;
	Mon,  2 Dec 2024 20:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733172837;
	bh=2laIjz9xsicujtniaPL4cc3Nj5U/lK+5qEsI2trrT2Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ffzpUR4flSdYh3C43oEXLR/wqNFxNDYg765izOnzN32bVDFdRoqtpjbZNPiJo+ZwJ
	 Qbm+/k0hKI+k9opPFktE8vKxPRIQ+DCE8D1JdCGiUGlrXms9N42NLG3sgjd/AYIz7x
	 R8v+Sy5Pkh27EY/iUEgQg+MfJD01rKZkuPf5xRCLlljwOiQ33UPV8W27p9q2qefgOu
	 lj66AJSB+lerMd4amps4lpqKH/BQsAWqnP16cqtenmQRWvUEKYojT5ktXGktG/iWrI
	 lgb1yRze7sQOBGaLL8f0albDrsQmmcc51OEzp5GE5Bz+JDQ+f5UB/a+bumhjNONyTr
	 IrxPu2kbrcUNw==
Date: Mon, 2 Dec 2024 12:53:56 -0800
From: Namhyung Kim <namhyung@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>
Cc: Vince Weaver <vincent.weaver@maine.edu>,
	=?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
Message-ID: <Z04eZN4Cpbqw4Rpe@google.com>
References: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
 <00910b8e-fdaf-45ae-8dcc-8c926d7fce65@maine.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <00910b8e-fdaf-45ae-8dcc-8c926d7fce65@maine.edu>

Hi Peter and Ingo,

On Tue, Nov 26, 2024 at 05:13:45PM -0500, Vince Weaver wrote:
> On Sat, 23 Nov 2024, Mikołaj Kołek wrote:
> 
> > findings. In the MMAP layout section of the page, you can find this
> > sentence:
> > Before Linux 2.6.39, there is a bug that means you must allocate
> > an mmap ring buffer when sampling even if you do not plan to
> > access it.
> > Unless I'm somehow misunderstanding it, this statement does not seem
> > to be well worded, or alternatively this bug does not seem to be
> > fixed.
> 
> That text was probably written by me.
> 
> I tried looking at the 2.6.39 code, my perf_tests, and also PAPI which was 
> where the problem was probably noticed but I can't find a firm reference 
> for how the issue was fixed.
> 
> If I recall, the problem was if you were trying to create a sampling event 
> without mmap (say you want to get a signal every 100,000 retired 
> instructions, but you don't actually want any sample data).  I think 
> before 2.6.39 if you tried setting that up you'd get some sort of error 
> (an EINVAL?) when trying to start(?) the event.
> 
> It is possible this wasn't fixed.  I tried to be pretty good 
> about putting relevant git commits as comments in the manpage but there 
> doesn't seem to be one for that part of the text.  I'm guessing it was 
> PeterZ doing the work on this so maybe he remembers.

Do you remember what was the issue exactly on sampling events w/o mmap?

Thanks,
Namhyung


