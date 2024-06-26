Return-Path: <linux-man+bounces-1281-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A79B9199DE
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 23:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 029BE1C21D82
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 21:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE64193098;
	Wed, 26 Jun 2024 21:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="CYFa51uV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66FB192B95
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 21:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719438251; cv=none; b=B9FjGpKWb6aEMUxk5sRibnREdv9+7rxfsHzgn0O1PHizhPq2Mq0VTE90TyCr5l0mTuOg2BsrOF1o0UuNWWPXkHHlJCuyz39CUJVZyfcVwUL/9NMaJW+yK63hgUK3U3BQpUtrTKLf05TcrsLsqotUZ+1f6E37MCIFWU7IQwfppH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719438251; c=relaxed/simple;
	bh=V9EuyUl2ls4FeArP3NylY+Sy3E+SCePkw5Hb7n8K/GI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bOFVFJpQpaB8YLfGsUn8WV2zPraj6GY8nGeZmfFTs53RTU9pe8S9Cef5N5FvPSikkOlI8BjGKUbfwwt4fWmXGfE13m+GcsGaZ8uZRhDGvZTnCk+E4NGPjjvL+oFKcP80XB4MYalsQ7qY4PLtEVJlcX6CLgHPs5Zfc6j2rYT5cEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=CYFa51uV; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4463b71d5b0so4865991cf.1
        for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 14:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719438249; x=1720043049; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jjNG4R1vZNPfH956v4J0OTtHbyuKxsK4TtmNrljMZDU=;
        b=CYFa51uVVbz1h8P1DLXe+LwlYxPenbl54+07mwTc9FzrMCcLpTj8ONoFCYeFz4qRLm
         53eM+0qTtOIef930igIa7kZYQnkLPHTDuOnA+92J+REH3rjCLwFpjeby0wrDHsCXQpcN
         DPc71iOU1X0ldBoWa7iAuUfkHbq+njrQe0XkJwtingrudGLOXCj9RJquKYDTXLVqWLXd
         xfLlJfgPROUIfexPl+o7oyaXyErVVARQXAqK/0ix8XsnFkycUljp7IKgc8/C1oLLRhPi
         3/DEFh15bVMEKFhnGAoZ46krm/tlXtcTY9S3Wdwl10oHq89jpcZtj+kQIM6Mp2EqzM1Q
         FKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719438249; x=1720043049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jjNG4R1vZNPfH956v4J0OTtHbyuKxsK4TtmNrljMZDU=;
        b=LTPYhkOj4mG6cZDu5uK+vHPq32ww3dDUqrXNwJaCeeZXqOlA2Mvy+p8E2o0f+Ex/jm
         q6zNHY+PQrPBS1BDHQM3br1HhlLXJNIA+soIgIlE5WmiJW+HV3X6RG7Wdmijh6wLLBdm
         8y17DfrBgp7JCYVqXA8HDRbyZN3SK/XIwYGubW/NpzKpSsNqSYoEZWB9R9Hn5s3kGjaU
         K2Qo2Gi/CmcSDDyXfBPvudOQgvfnVE+HKwawlq7/tjcK2z3p2CxG5sjoR/z2Uc2yfALu
         84U9cXUt/IDlg5Tt2T23YkQxOuxJNeUf6F5b/yIGpdcpthDoGdzgVLPLQMzcPTrEZvj2
         8opg==
X-Gm-Message-State: AOJu0YxdieTbzLB95UBcNSKlGfU4dBmoCutgqOJk9mRPWROL9EthOoqi
	x/z93bFgc341d56SqG+aihBSwJyy59fnBUK0RWHVyYo4/F/c6eqMvOUkaWLlOIs=
X-Google-Smtp-Source: AGHT+IF8WfCEFzI3B+9W0m8Gl2Lh73d5ucYGeDd2e+9DtVLqoWqH8tHCuEQa4FBQgkv1OZMAnZL4/Q==
X-Received: by 2002:a05:622a:1a83:b0:446:371b:1b9f with SMTP id d75a77b69052e-446371b2083mr23201741cf.22.1719438248726;
        Wed, 26 Jun 2024 14:44:08 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44501893592sm18084161cf.37.2024.06.26.14.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 14:44:08 -0700 (PDT)
Date: Wed, 26 Jun 2024 17:44:07 -0400
From: Josef Bacik <josef@toxicpanda.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, brauner@kernel.org,
	linux-fsdevel@vger.kernel.org, mszeredi@redhat.com,
	kernel-team@fb.com
Subject: Re: [PATCH v2 0/2] man-pages: add documentation for
 statmount/listmount
Message-ID: <20240626214407.GA3602100@perftesting>
References: <cover.1719417184.git.josef@toxicpanda.com>
 <t6z4z33wkaf2ufqzt4dtkpw2xdjrr67pm5p5leikj3uj3ahhkg@jzssz7gcv2h5>
 <20240626180434.GA3370416@perftesting>
 <gsfbaxnh7blhcldfbnhup4wqb2e6gsccpgy4aoyglohvwkoly5@fcctrxviaspy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <gsfbaxnh7blhcldfbnhup4wqb2e6gsccpgy4aoyglohvwkoly5@fcctrxviaspy>

On Wed, Jun 26, 2024 at 08:41:06PM +0200, Alejandro Colomar wrote:
> Hi Josef,
> 
> On Wed, Jun 26, 2024 at 02:04:34PM GMT, Josef Bacik wrote:
> > On Wed, Jun 26, 2024 at 07:02:26PM +0200, Alejandro Colomar wrote:
> > > You can
> > > 
> > > 	$ make lint build check -j8 -k
> > > 	$ make lint build check
> > > 
> > > to see the full list of failures.
> > 
> > I captured the output of
> > 
> > make lint build check -j8 -k > out.txt 2>&1
> 
> Hmmm, please do the following steps to have a cleaner log:
> 
> 	## Let's see if the build system itself complains:
> 	$ make nothing >out0.txt
> 
> 	## Skip checkpatch stuff:
> 	$ make -t lint-c-checkpatch
> 
> 	## Make fast stuff that doesn't break:
> 	$ make lint build check -j8 -k >/dev/null 2>/dev/null
> 
> 	## Now log the remaining errors:
> 	$ make lint build check >out.txt 2>&1
> 
> > and pasted it here
> > 
> > https://paste.centos.org/view/ed3387a9
> 
> BTW, you seem to also be missing cppcheck(1), which at least in Debian
> is provided in the cppcheck package.  It also seems to be available in
> Fedora, but I don't know if your system will have it.
> 
> > Clang messes up a bunch for a variety of different pages.
> 
> I suspect the Clang errors to be due to missing libbsd-dev.
> 

Ok well those two things fixed most of the errors, now I'm down to just this

https://paste.centos.org/view/acd71eb7

I'm on Fedora btw. Thanks,

Josef

