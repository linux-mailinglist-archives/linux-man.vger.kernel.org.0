Return-Path: <linux-man+bounces-800-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 063018AD1D0
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 18:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B552B285094
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 16:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D1615350A;
	Mon, 22 Apr 2024 16:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bmRb6WzG"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF7D14F11B
	for <linux-man@vger.kernel.org>; Mon, 22 Apr 2024 16:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713802981; cv=none; b=Equ+HxO/pedh3nCi27fS29ncxpGq5bDUTJE3W8s4JO/HzeavO1yejRMP3Gnu/2ycNOkEYgvFQCEl9KD/Cohf8KH7kqAjiz7Vgs5EQFLOGJ8COH9Lex4xzG4JxNMu26QCUTmedhXaJORdz5YCq7npaVB26DA7laHtaIXLfL3IHwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713802981; c=relaxed/simple;
	bh=+xeDIwKKPZOBsGjmyjGv5sMoL2sX4EcIVEnYy6q1Pqc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=GGFL+6vq3xYnE8WT3syzMl282pnWctiKNGMd071nNS6nucAB40x0nD+QHOyuQeISKTxlVamgoNi9Q6TDMDLnmJjjeSAmwFSsKhhVaXrnsIZlSIVIndXs+1e4nBpUSJE0U1VtWfcMjk7xXa0g6obVNpRBb1UP0nVTPwSQ+hkZcdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bmRb6WzG; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1713802978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=l9za9vzqTU78jwGyKnfPrRwR8TjtaVOGgJig9orscTg=;
	b=bmRb6WzGWlg0eTZ6E1ot+umgbgUtrH5yJT01PwwSBiFqiKu1oYWk/oSDdPWiv/yuZhCe81
	MrQEnOzzrXWXzk7MB6ZMvsHLge50mQfoMG+LNWLX+FRdYy9v8HrhMR3CHgNZUj9QYaj43Y
	JeErLf1t6UpEnMaAbFoNGS/du13ZWIg=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-262-SGhOEyLfMkGYIEy86Q8c4Q-1; Mon, 22 Apr 2024 12:22:55 -0400
X-MC-Unique: SGhOEyLfMkGYIEy86Q8c4Q-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-347ddb973dcso2761719f8f.2
        for <linux-man@vger.kernel.org>; Mon, 22 Apr 2024 09:22:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713802974; x=1714407774;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l9za9vzqTU78jwGyKnfPrRwR8TjtaVOGgJig9orscTg=;
        b=d4pVras2NfTIylKpEM119jaaxjyy67iQRs1e9bWQls0w3Ecs6fnATHGYwov8r+170/
         SzG6yQ04da7U/lw/iB9qtaBdv047xNMA80Rg5aD9oP/sbJG3SH4LkTr4l5RO5p6rSgXl
         zYUdzL4GyVEnJR/BM/4KqMGwYQz7neNzlgcvGPh2yN+iyZWUue8wJdZ9aadRpostqdpR
         2c0nsEcipJTuTrz86AqkIQ8J7Bu0EAY1x4ZDZDSnU/MJgZB9H7emmxm/4tEGObXxREXX
         YRw5XeTE+8gL9yurgOK641tkri19P4+DptUFIjG5WiT+jnXAI8aBmaHP4WDCBcNYY0Xb
         xOKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWIUAUbH8kU5Hs6zxuuhsX3PdtZDnVvyo8IN4rcNyS3Mrq4LyeiD661E1FH/BVgFt2KDiLrsBiO4hBWI4uRtObH/MmyK8+rMnS
X-Gm-Message-State: AOJu0YzOQLuuMHRmqQoQCsTJS3uDRENCVDtJxbdlrSUOua52SqGuPDXM
	nW84/PJJQqrWegKmSjGoLRdWRqlptziIcMtuu1QetZCsGuTBfJ4V2x89PLEDSEZkaKREQjb/IMH
	Jh/DzPsMZfPzcq4IWzM655TGFVnTTfKsqNUFIwM3yTne0+UAPNNmMjjtlyA==
X-Received: by 2002:a05:6000:10e:b0:343:ebd4:35a5 with SMTP id o14-20020a056000010e00b00343ebd435a5mr5925856wrx.0.1713802973938;
        Mon, 22 Apr 2024 09:22:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUXQysSPrek8TT25MQLx/ylKOJKIOU7hC0N/hYo2O1/0sXYoWQN0VIFrtgpeZUzRNT094IMA==
X-Received: by 2002:a05:6000:10e:b0:343:ebd4:35a5 with SMTP id o14-20020a056000010e00b00343ebd435a5mr5925840wrx.0.1713802973503;
        Mon, 22 Apr 2024 09:22:53 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id e10-20020a05600c4e4a00b0041a809403d4sm2320962wmq.6.2024.04.22.09.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 09:22:52 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.95)
	(envelope-from <josmyers@redhat.com>)
	id 1rywQo-001Vp5-0E;
	Mon, 22 Apr 2024 16:22:14 +0000
Date: Mon, 22 Apr 2024 16:22:13 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
cc: Joachim Wuttke <j.wuttke@fz-juelich.de>, bug-binutils@gnu.org, 
    linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Subject: Re: elf(5) and ld.so(8): DT_RPATH deprecated - really?
In-Reply-To: <ZiXpBp-vigNCwpHx@debian>
Message-ID: <48c28639-f09d-dab2-10bb-9a6813b28062@redhat.com>
References: <643ad7be-1cf5-491d-bd0c-d87e2b260912@fz-juelich.de> <ZiXpBp-vigNCwpHx@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 22 Apr 2024, Alejandro Colomar wrote:

> Nobody said it would be removed soon.  But it seems people want to
> remove it "eventually", with that eventually possibly being in a couple
> of centuries, if computers still exist.
> 
> But if you have the intention of using it in new software, or keeping it
> in existing software, maybe you could give your reasons to those who
> deprecated it, so that either you convince them of its usefulness, or
> they convince you of not using it.

DT_RPATH is just as useful as it always was for testing purposes, when 
you're building binaries against a sysroot and use -rpath and 
-dynamic-linker pointing to that sysroot, and you really do want the RPATH 
used at runtime to find both direct and indirect dependencies and 
DT_RUNPATH would *not* serve the same purpose (because the sysroot is 
intended to have exactly the same binaries that would eventually be used 
in the root filesystem of the target in production, it would not be 
appropriate to set DT_RUNPATH in any of those binaries).

-- 
Joseph S. Myers
josmyers@redhat.com


