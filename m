Return-Path: <linux-man+bounces-1524-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BFD93D6DA
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 18:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BECA3B2370E
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 16:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883C23FBA5;
	Fri, 26 Jul 2024 16:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="G0CJxvCg"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FE72E620
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 16:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722011096; cv=none; b=f2ahtBHba0vyvx8qQV17mHg2zYAdFA8AOqrLzTDNnAwgzK7UQhStJ5Mde3njv55ALyeE7xXiNSKuSWbx8ttS9lCg9MhGEK+NqdbJE4/VNupFK7nVxCENAGpmjeS9WkPklYdZiy9LUAXVZ7X3r3ZIeqbOeDCDPDkHs8WxOeh42Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722011096; c=relaxed/simple;
	bh=ngMASjWe+cKX4Wp+l5tQXY78sLacyde+dxIxx4CKwMs=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=Bi0v4xkfoKOj0P87vqesakCigMYujVE6yUb4bEmysjDUxFZFowU3mAcKdPrXH+mgI1Clhct7Ggl4D6/ae9G4YhkLdG88FzfcCVaSHGcrLG+8cES2k2LKN4Njrahz4Gvey1LeakbtpkGyPE5tNlZ17cWb366LgvdqD2Qht41PZVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=G0CJxvCg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1722011093;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=olpD09BHJcDWF5RrjKFS1I3duUb+xG5ZzB2Nhxvobjc=;
	b=G0CJxvCgXa3jUVC3elqvMAjmXht+xGotY99aCbWHL16BI7atUgTCh2bU2mwZ0BrPdyNdiy
	aOH1I9z6fbjj+uX9EW5PMpvWGLWGG/O0ekT8IZ+q4WbjOHKIz2mpTLwL5Mu+Y0QPCUjSgB
	G9gDuI/XBeRxdu/L0l6LJ6GFd607oQo=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-22-qtrXWv4GNP6fcYpnrxV1Pw-1; Fri, 26 Jul 2024 12:24:52 -0400
X-MC-Unique: qtrXWv4GNP6fcYpnrxV1Pw-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4280a39ecebso5405605e9.0
        for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 09:24:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722011091; x=1722615891;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=olpD09BHJcDWF5RrjKFS1I3duUb+xG5ZzB2Nhxvobjc=;
        b=PJnK1KRqtTN6CmglfeJry+flBQImS8ZN/linIhgP9z8xPnsIJ2I22fPoDmGMTgQZac
         hrydkMGGXtNjnpIPcrVuKgMbbmtyVsomLk/PPtSL8D9VJI9IVXe9vkXB2fd7++1AgilD
         ApnYqcCHs1EsBSVFaqeb38M9UmPVLd/RbouU+vtdigMpr//m451u9vy3xcHhfGXZ/Zq/
         gviCmLp/TwqffLixuFYddE3OwNbYH6jUKT2z6D8DkH7CycSiv+HWF1YSyotKYbHVfhn2
         dHFHjDNZqdjg7H85PSUaVO7nTaOou62lYoLIfCdrquKu1pMjy3/lqkA/lnNn4pgu9CDC
         nb8w==
X-Forwarded-Encrypted: i=1; AJvYcCUscbVt8WkwzYbXXvZy+XN2Rwe6DC/gWhaLjP3WgHM0tj8Z6C0LgyTH0otGXeqm1n64z7InA98gwRsvGvsL8HzRFnXTRf0ODS0v
X-Gm-Message-State: AOJu0YzcfSraK6Cy2lhPfbgMkAcJFfcZjd788nklkVd9c5jgBg8m6qla
	hDpXoJWZzrTMq9E6bskk66YE5DChcZ7IXlr58tHQSf6KXjBXU1MABcN8jzv9AkTADsLaCtPuLqN
	2cnHtAe/7KuhLet2uoYDqopMdInfqOC9qshKreXk5hmeV6PGbdDEnKSGW5w==
X-Received: by 2002:a05:600c:3146:b0:424:a7f1:ba2 with SMTP id 5b1f17b1804b1-42811fde2a9mr568405e9.17.1722011090768;
        Fri, 26 Jul 2024 09:24:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwQhFe5NrTeh/QWmIupVSHJuUHOpHqye6y2qTDD1jVkNFRIUX019TXqBrEmVrjEpYwlNxU+A==
X-Received: by 2002:a05:600c:3146:b0:424:a7f1:ba2 with SMTP id 5b1f17b1804b1-42811fde2a9mr568125e9.17.1722011090278;
        Fri, 26 Jul 2024 09:24:50 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f93e605esm130205855e9.34.2024.07.26.09.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 09:24:49 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.95)
	(envelope-from <josmyers@redhat.com>)
	id 1sXNjq-000yWJ-5u;
	Fri, 26 Jul 2024 16:24:14 +0000
Date: Fri, 26 Jul 2024 16:24:14 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org, 
    Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
    xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, 
    jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
    ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
In-Reply-To: <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
Message-ID: <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
References: <20240705130249.14116-2-alx@kernel.org> <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq> <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1152306461-1997570556-1722011054=:229467"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1152306461-1997570556-1722011054=:229467
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Wed, 10 Jul 2024, Alejandro Colomar via Gcc wrote:

>    6.7.13.x The restrict function attribute
>      Constraints
>             The restrict attribute shall be applied to a function.
> 
>             A 1‐based index can be specified in an  attribute  argument
>             clause,  to  associate the attribute with the corresponding
>             parameter of the function, which must be of a pointer type.

It's more appropriate to say "shall", and you need a requirement for the 
pointer to be a pointer to a complete object type (it makes no sense with 
function pointers, or void).  That is, something like "If an attribute 
argument clause is present, it shall have the form:

  ( constant-expression )

The constant expression shall be an integer constant expression with 
positive value.  It shall be the index, counting starting from 1, of a 
function parameter whose type is a pointer to a complete object type.".

(That might not quite be sufficient - there are the usual questions of 
exactly *when* the type needs to be complete, if it's completed part way 
through the function definition, but the standard already doesn't tend to 
specify such things very precisely.)

>             (Optional.)   The argument attribute clause may be omitted,
>             which is equivalent to specifying the  attribute  once  for
>             each parameter that is a pointer.

For each parameter that is a pointer to a complete object type, or should 
there be a constraint violation in this case if some are pointers to such 
types and some are pointers to other types?

>             If the number of elements is specified with array  notation
>             (or  a compiler‐specific attribute), the array object to be
>             considered for aliasing is a sub‐object of the original ar‐
>             ray object, limited by the number  of  elements  specifiedr
>             [1].

This is semantically problematic in the absence of something like N2906 
(different declarations could use different numbers of elements), and even 
N2906 wouldn't help for the VLA case.

>      [1]  For the following prototype:
> 
>                  [[restrict(1)]] [[restrict(2)]]
>                  void f(size_t n, int a[n], const int b[n]);

That declaration currently means

  void f(size_t n, int a[*], const int b[*]);

(that is, the expression giving a VLA size is ignored).  It's equivalent 
to e.g.

  void f(size_t n, int a[n + foo()], const int b[n + bar()]);

where because the size expressions are never evaluated and there's no time 
defined for evaluation, it's far from clear what anything talking about 
them giving an array size would even mean.


I know that "noalias" was included in some C89 drafts but removed from the 
final standard after objections.  Maybe someone who was around then could 
explain what "noalias" was, what the problems with it were and how it 
differs from "restrict", so we can make sure that any new proposals in 
this area don't suffer from whatever the perceived deficiencies of 
"noalias" were?

-- 
Joseph S. Myers
josmyers@redhat.com
---1152306461-1997570556-1722011054=:229467--


