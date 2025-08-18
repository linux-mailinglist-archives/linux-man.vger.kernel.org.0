Return-Path: <linux-man+bounces-3478-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E4DB2AFB8
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 19:46:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7AEFE4E3D08
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 17:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB1D2D2482;
	Mon, 18 Aug 2025 17:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="FrCpa+a5"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5BC2D2480
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755539196; cv=none; b=pTiNvxSeWpjKgWa+P5CLCsgZIpiGS6iwedns19/9lf6TyhGSSr6CfPkZxKHdAIuLjrgGhQUlfBeF/rbE9iBVtZT1Bdaq6udI+k/gi8vXU5T3wB67y/24Fs1xE/PY2tQFzO7EryKGL2cnOrEx9eIRy13E6qJr+MLe+nH68x4eL7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755539196; c=relaxed/simple;
	bh=khe+TcRG4qOKWfgtuVHWyztPDrsTOzzO1mNXydxx+88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+VgFf7JKaH3u4nDTptkr3WFizRpNyp8YP25wcjkVFNrBLDbDX+2udzG4WHparX7/RQs+dXfH0Ep/6TKjc95saL7r4E1c6CpOq3KoS24d5lg50/ewWkeSuiGy854B6dOL4lyC+gJfFpvKZoQ/DGLYqBbNm1PlJXLZbrp5hc9DRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=FrCpa+a5; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=xiFw7Uu+PxkRwBnYq/LYl5GXdpkYWOnUs64Zry1Jvh0=; b=FrCpa+a5j/qScMM+
	MFPhwXs0UiLjwZO2RBZgh/i9siQzWQ6Jlpx7z+Vi7GTtSuttyWOe5VB/MgsFJjpembHakz0gARh6b
	0Xt5sIkZmjea6HVU409noC8hqRTbh9Rl/d+dDoGWaIMAMQe08Ua7PygWcOL2FwRxoCw2Sf+svnt7d
	Sh+Rm0oZm38AaH3l34ZQijzibOIwcBjZ3FNxWBHmwXXTvadedE6r66Ru6DxB5XSCuVIEc6HQ3CwMv
	ort6lM4FsXWItikElubIC2Ro3mi5hqqOzJn+9YSUWH03zjJUhCNLs+yh1jCgYMsshA6HklIdD1I1P
	vl4i5ksd60Ysg5NCxw==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
	(envelope-from <dg@treblig.org>)
	id 1uo3wF-004f4F-2L;
	Mon, 18 Aug 2025 17:46:31 +0000
Date: Mon, 18 Aug 2025 17:46:31 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/strftime.3: Check parameter
Message-ID: <aKNm9x_rz82AcvhJ@gallifrey>
References: <20250818165636.44122-1-dave@treblig.org>
 <wwgiyenaug2vquoevgfjzx3ml4xzzwbcarbk677isrwvya36ak@hzv5yz6zurdi>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <wwgiyenaug2vquoevgfjzx3ml4xzzwbcarbk677isrwvya36ak@hzv5yz6zurdi>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-34-amd64 (x86_64)
X-Uptime: 17:46:03 up 113 days,  1:59,  1 user,  load average: 0.06, 0.02,
 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi David,
> 
> On Mon, Aug 18, 2025 at 05:56:35PM +0100, dave@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > 
> > The strftime example requires a format paramter.  If you don't
> > pass one it crashes.
> > Check for the parameter.
> > 
> > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> > ---
> >  man/man3/strftime.3 | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
> > index 4a3f805bb..3c1108b36 100644
> > --- a/man/man3/strftime.3
> > +++ b/man/man3/strftime.3
> > @@ -739,6 +739,11 @@ .SS Program source
> >      char outstr[200];
> >      time_t t;
> >      struct tm *tmp;
> > +\&
> > +    if (argc != 2) {
> > +        fprintf(stderr,"%s: format-string\[rs]n", argv[0]);
> 
> Please make it consistent with examples from other manual pages.  See:

Thanks for the review,

V2 sent, see: 20250818174553.70132-1-dave@treblig.org

Dave

> $ find man/ -type f \
> | xargs mansect EXAMPLES \
> | man /dev/stdin \
> | grep fprintf.*stderr.*argv.0;
>                fprintf(stderr, "Usage: %s MOUNT\n", argv[0]);
>                fprintf(stderr, "Usage: %s <file>\n", argv[0]);
>                fprintf(stderr, "Usage: %s device [output [input] ]\n", argv[0]);
>                fprintf(stderr, "Usage: %s <source> <destination>\n", argv[0]);
>                fprintf(stderr, "%s <owner> <file>\n", argv[0]);
>                    fprintf(stderr, "Usage: %s shmid semid string\n", argv[0]);
>                fprintf(stderr, "Usage: %s path\n", argv[0]);
>                fprintf(stderr, "Usage: %s path\n", argv[0]);
>                fprintf(stderr, "Usage: %s [mount-path]\n", argv[0]);
>                fprintf(stderr, "%s /proc/PID/ns/FILE cmd args...\n", argv[0]);
>                fprintf(stderr, "Usage: %s <child-hostname>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <pid>\n", argv[0]);
>                fprintf(stderr, "%s file offset [length]\n", argv[0]);
>                fprintf(stderr, "Usage: %s <path>\n", argv[0]);
>               fprintf(stderr, "Usage: %s file...\n", argv[0]);
>                fprintf(stderr, "Usage: %s <file>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <path>\n", argv[0]);
>                    fprintf(stderr, "Usage: %s <file-to-exec>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <num>...\n", argv[0]);
>                fprintf(stderr, "Usage: %s num-pages\n", argv[0]);
>                fprintf(stderr, "Usage: %s <pid> <signal>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <string>\n", argv[0]);
>                fprintf(stderr, "%s name size [seals]\n", argv[0]);
>                fprintf(stderr, "%s /proc/PID/fd/FD\n", argv[0]);
>                fprintf(stderr, "Usage: %s '<num>...'\n", argv[0]);
>                fprintf(stderr, "Usage: %s HOST...\n", argv[0]);
>                fprintf(stderr, "Usage: %s <libpath>\n", argv[0]);
>                fprintf(stderr, "%s response\n", argv[0]);
>                fprintf(stderr, "Usage: %s <user> <ngroups>\n", argv[0]);
>                fprintf(stderr, "Usage: %s str [base]\n", argv[0]);
>                fprintf(stderr, "Usage: %s username\n", argv[0]);
>                fprintf(stderr, "Usage: %s <file>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <num-cpus>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <string1> <string2>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <num> <num>\n", argv[0]);
>                fprintf(stderr, "%s <dotted-address>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <mq-name>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <num>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <string>...\n", argv[0]);
>                fprintf(stderr, "Usage: %s locale1 [locale2]\n", argv[0]);
>                fprintf(stderr, "Usage: %s string delim subdelim\n", argv[0]);
>                fprintf(stderr,  "Usage: %s [-c] string...\n", argv[0]);
>                fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
>                fprintf(stderr, "Usage: %s mq-name\n", argv[0]);
>                fprintf(stderr, "Usage: %s string\n", argv[0]);
>                fprintf(stderr, "Usage: %s port\n", argv[0]);
>                fprintf(stderr, "Usage: %s host port msg...\n", argv[0]);
>                fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
>                fprintf(stderr, "\nUsage: %s -o <suboptstring>\n", argv[0]);
>                fprintf(stderr, "%s num-calls\n", argv[0]);
>                fprintf(stderr, "Usage: %s {i4|i6|<num>} string\n", argv[0]);
>                    fprintf(stderr, "Usage: %s <seed> <nloops>\n", argv[0]);
>                fprintf(stderr, "Usage: %s <str1> <str2> [<n>]\n", argv[0]);
>                fprintf(stderr, "Usage: %s <locale> <string>\n", argv[0]);
>                    fprintf(stderr, "Usage: %s /shm-path\n", argv[0]);
>                    fprintf(stderr, "Usage: %s /shm-path string\n", argv[0]);
>                fprintf(stderr, "Usage: %s yyyy mm dd HH MM SS isdst\n", argv[0]);
>                fprintf(stderr, "Usage: %s <real> <imag>\n", argv[0]);
>                fprintf(stderr, "%s <process-ID>\n", argv[0]);
>                fprintf(stderr, "Usage: %s backing-file\n", argv[0]);
> 
> 
> Have a lovely day!
> Alex
> 
> > +        exit(EXIT_FAILURE);
> > +    }
> >  \&
> >      t = time(NULL);
> >      tmp = localtime(&t);
> > -- 
> > 2.50.1
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>


-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

