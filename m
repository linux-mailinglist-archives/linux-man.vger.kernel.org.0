Return-Path: <linux-man+bounces-1304-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A9391CAAF
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 04:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43BAD282F78
	for <lists+linux-man@lfdr.de>; Sat, 29 Jun 2024 02:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB7A1BF2A;
	Sat, 29 Jun 2024 02:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ibQQt4X/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E94F1802E
	for <linux-man@vger.kernel.org>; Sat, 29 Jun 2024 02:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719628664; cv=none; b=g5pCUjZFMa24blLcqvS1eNtvY3tE2Nrr32SMB2qxBDOLcMQVnBupWQlu8y361hrPzLmFWUeyp13tpP9Mo8xyKo8uB+/O0sB7gl6p6dbBoOg/gCBNE0MbRc9vk5pr98sXlmWFRd6S0rE3RxGX5yM9zoOBz/P00ziaPKyf8t5hV1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719628664; c=relaxed/simple;
	bh=Q2kTdGfmUloxeAFIq98d/aeJhd9K/4FUmdf0AlShXLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ESaCuL6IW4tmCSY+7F1+lYhOlifVKQXMRKOMNp+3QA1KytmVgfm0pP9XmFX80f/hnO0+0thVVvbdtsEs1JVNyLTlJb3zTCnsGAQyrs78puzklQpeN+r/qb5bAnw8oUia3lC+ZLc+hs+VEBZB0d3HAdptCMF/Q0v+/3GICpZrsYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ibQQt4X/; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-6e7b121be30so817052a12.1
        for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 19:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719628661; x=1720233461; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AHD2+Aqn+cHX+u5rw5E/7HgrOLNKNZHi1XTzfN4ijKE=;
        b=ibQQt4X/4UY1+bDJz0zcUnRwejup6pYdmUSa4Wwm6Sf2FTPkHfN9D6g65qmWTBXGcm
         zv4mAyc8IM0wChUtbpxXLa+vkzwBpiBIITUCG7YWHx2qVtH1zt0XJk1+BWsHZ7Ud8AyW
         TxI8ooE3zJJCmvKY1E4GZpth2FYi+YpsyeeBEu/e/nR2a6dLQ32eHOFS0KjKa35LsvQX
         DtI1VpnrSJuIX80BpbvHjptjJVtFPJeLmGEQzdS+BU8BIUsI43kO1jvzFzhBqUnwTYUH
         x6jJ28bVdjcozgzRfAffyZ8Oi7gUSg4s6sZXpL1bSVcjFDcsmBdgDZD2ro/7z/qyDjer
         Mdog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719628661; x=1720233461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AHD2+Aqn+cHX+u5rw5E/7HgrOLNKNZHi1XTzfN4ijKE=;
        b=aq7O1FGg8EchEDAUMi+ni1EJW0FZk0KpsyDqitPqjmfL5og7ydqpECxYHAq7hK2AQA
         lniulqUd+aMlHm0HKux4EEkQxrVb/XaU3gIpqEhj9bzPA1sPq7SCBqfQ8VwotwpwB45W
         L4oB6LaS6TcjzUDJ6oAS4szl8r/er0tXv5H9caKFlrL86uZ1/CVJL9DG5s+Gx3uiwcEz
         TPQKeMuq5vqJQrj4AKmgPMDm73PKjncnaelqtRxG0/YzlFg3TyMB3kOPcjodUhEsIq8W
         EaWd+17zKq+Dr1tWYovrVq/BHfByWWVN8lJvyPIK8kYcqDqNpaI/4zwcJgL+qM+v0lnV
         Uz1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVhPPAVR16+OqlSiJkE5OHKmBO5j9DyswA/AMDo8b1IeBYPf21pNXnUrxgA85c7A45/sK1g+l93C4QktIfGzb1QcTGXOe02vmnj
X-Gm-Message-State: AOJu0Yz99UhthXsSehlXDyg+xOkuWIDGps/Pbrz2cNIA5HHEwB2Ps6cg
	+n/O4sY+YsQ0r1RCsHY+mTBTo1rpc0YXdnZchp5UAPGLiVyitsKG/kFLqjQD/5U=
X-Google-Smtp-Source: AGHT+IFigPYpgS3WRK7RgGusFNKQsUFYcKBe875h1VBH4rKoueedC2SuKT7R48V/0M8GipB0CkRWEw==
X-Received: by 2002:a05:6a20:12c3:b0:1be:bff2:b1b5 with SMTP id adf61e73a8af0-1bef60fedf7mr61860637.15.1719628661317;
        Fri, 28 Jun 2024 19:37:41 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:a292:f80a:858:1ca9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac10d1438sm22278115ad.24.2024.06.28.19.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 19:37:40 -0700 (PDT)
Date: Fri, 28 Jun 2024 19:37:39 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <Zn9zcy8MufPhidRf@ghost>
References: <20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com>
 <ZdFaStMt83D-i8yH@debian>
 <ZnyHEiYs/V/zwJXq@ghost>
 <xsma4ago4umlvz2fnopwg5qyfd7tg376g2ddumfj3yf4nqsesv@rkmsudvmzvl3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xsma4ago4umlvz2fnopwg5qyfd7tg376g2ddumfj3yf4nqsesv@rkmsudvmzvl3>

On Fri, Jun 28, 2024 at 01:23:44PM +0200, Alejandro Colomar wrote:
> Hi Charlie,
> 
> On Wed, Jun 26, 2024 at 02:24:34PM GMT, Charlie Jenkins wrote:
> > On Sun, Feb 18, 2024 at 02:15:53AM +0100, Alejandro Colomar wrote:
> > > Hi Charlie,
> > > 
> > > On Mon, Feb 12, 2024 at 09:19:21PM -0500, Charlie Jenkins wrote:
> > > > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
> > > > for prctl(2) to LKML. It has been reviewed and is expected to land
> > > > during the Linux version 6.9 merge window. This adds the relevant
> > > > documentation from that patch.
> > > > 
> > > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > > ---
> > > > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
> > > > flag for prctl(2) to LKML. It has been reviewed and is expected to land
> > > > during the Linux version 6.9 merge window.
> > > 
> > > Can you please ping when that happens?  The below LGTM.
> > 
> > This patch ended up missing a merge window but it is now in the release
> > candidates for 6.10. The hash is 6b9391b581fd ("riscv: Include
> > riscv_set_icache_flush_ctx prctl").
> 
> Thanks for the ping!  Would you mind resending the patch if it's easy
> for you?  I don't have it locally.

I rebased it onto master with an example and sent it as a v3.

- Charlie

> 
> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



