Return-Path: <linux-man+bounces-2671-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A913A759AE
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 12:58:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B56FA7A3E85
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 10:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BEEA149DFF;
	Sun, 30 Mar 2025 10:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WOrGQ65s"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8381A1876
	for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 10:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743332293; cv=none; b=NWfxzaN9lVHSepnZ08XczyfgtXfxIpF/+3fvQWoXNRtA55pvLXb4O/ZxsbeD+fKTNkd4mJIS/IjYzlh1dzuFj7TfCsXlN2jRJ9+jEudWLmrE57LOdjMNJVmRXROM1y9UvOkXRQ+KLg9O/ngTmWb/T/Izz1wSLP428rTzoJsCJ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743332293; c=relaxed/simple;
	bh=GGIJbs8wOHtKjRGWmoDLvTn9Uw0ZXq3zWJ2YUh11zTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hxnRlMKN0MCwyPtsTKRKsyftE6Cyj+bvq55RgdJSGH/YrgjJoxEhXH624IWPuL5C+R/In8AZTBr2XJREQgWUL3lHM3XkbPZj1STJbfb3Eu8HbWAHclrzNquVRth88g55/JLlWwJIPvOCH5baU+NYriI67wjzCeEN7qVMckZ3Baw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WOrGQ65s; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cfb6e9031so33130525e9.0
        for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 03:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743332290; x=1743937090; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=envQXRZSylTtFz8Ira5KVIS++GjqIdGUjAONrt7s3DI=;
        b=WOrGQ65sOYhzJGkOm7bXXuBUhEmggTSu099qRvLHS1LBUn78vlYBngg9NoLGThRk4J
         oFLq4VU8S5xbTpspGm2Eoai3OnjfGKORgNlU+iyxYciTviXIdHEqL0cw3VifFMdvT2b9
         jBoL14sfHPwukWIIhvYfCZd28+Fqq4FFi3he6NkbVPgXDORwp5xF0rD+XxVUi/ANF6GD
         ovpboVtiGUmPhwiUmXXUDHkg4WLzh/VejUJr3NeqAzCCOvf3OHDQGmNwk070tlaOGdZH
         jkzJXy99c1z+KLqMHP3voaOsIeRytbkLQ57GusSKBUGO0zRNhh86h/Hv3YsPdmB9ke4a
         MRxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743332290; x=1743937090;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=envQXRZSylTtFz8Ira5KVIS++GjqIdGUjAONrt7s3DI=;
        b=EqJMJuU+Pjzfxba/6ZyewFWa8SHJLgTGxFVeBQYC2nMB0RUBLzANxm7T1oWBHXEigb
         pfiufFU/74hoLfcWZDgZzztCVK9z0TeuRuTjP8TEAC3kw6NMk2uSjckfB8Q+eH6rxvj8
         8nrlZJZCqrHZSksquMzfnklakSnN8gEbFBzmRcLxXemJdkqeE+odiQz7JCFAN9NX2e8Z
         8Zdvz4BXmaIAAVzgWCwyjV3/luEbyAARlNrU5VQy5Tno9n1gX4AKMp4rPls39eRuukMs
         UJalQ7MfAC8POOA0n9cVeoz6EnizgJHcFBbxOaFlLELe2dtzj0EuZKyNIAmLEK/0RBYd
         CsKA==
X-Forwarded-Encrypted: i=1; AJvYcCVMQgSxcJuxr20lGdNSKvFv6wCNVI3rwx0tv3VGfuHsPo3QVjLDFCVE4QaJhWNJ+i3jljnjIJEno8I=@vger.kernel.org
X-Gm-Message-State: AOJu0YyFT8ZiZhliSCvpyrMpGfX9pSVZDp8U8vrTJYrw/9wGH/Kjtw9d
	cNKPm4sYfyeRM97KXDqJMgFMf4+yrcr7xXtQ+OPX8uMgwy2a/v3t
X-Gm-Gg: ASbGncsP5i7Ix8hQhMowIdbpclswOO38RO+VbZgrbDWg/zzdlv366U445lmZXmf0/E9
	KurByMdS5oob+9FEWjmbpuzbR9g0fLDJM2iApMCbIeYQFc0id6awG1b38QSLSd9EcPgQfcXneii
	s1fbS37QE6s864g4sj7hd4eP0syhtjgv3sPOQLko9ZSJOywnALEILfJ47awHfJZkSabpPQE8/us
	+KAHWp3mre7DINeSVAopxbdW3LW99ZvsCyaOh90dkOWGmfc+tDVfjsuYfMvrMvU7Rm2dNB1YkcN
	LtFpBEXDNtHITT5Sc1AZB1MKEAS16KUu/f57eniVYwT7m+6/uVuixg6h3X8oTueAfFzBolE=
X-Google-Smtp-Source: AGHT+IGyrKh2uDLnEDbY0VPEbs//RRcew3QF18/m3bFyMf6kmEW0SLcpJnuixnUWOoeHwPPos5XRMQ==
X-Received: by 2002:a05:600c:3ba6:b0:43c:fb95:c752 with SMTP id 5b1f17b1804b1-43e97c4e1d1mr10126195e9.3.1743332289623;
        Sun, 30 Mar 2025 03:58:09 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43d8ff02f91sm88079915e9.29.2025.03.30.03.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 03:58:09 -0700 (PDT)
Date: Sun, 30 Mar 2025 12:58:07 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org,
	Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <20250330.8aeb7bdcfced@gnoack.org>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
 <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
 <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>
 <srbsuwx4ou3wrlr7shxz5gz6qp42af3azyx6c4vfkpupboifgy@7m7dtlshxraz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <srbsuwx4ou3wrlr7shxz5gz6qp42af3azyx6c4vfkpupboifgy@7m7dtlshxraz>

Hello!

On Wed, Mar 26, 2025 at 09:58:21AM +0100, Alejandro Colomar wrote:
> On Tue, Mar 25, 2025 at 09:48:58PM -0700, Jared Finder wrote:
> > On 2025-03-22 12:37, Alejandro Colomar wrote:
> > > Hi all,
> > > 
> > > On Mon, Mar 17, 2025 at 12:43:40PM -0500, G. Branden Robinson wrote:
> > > > [somewhat whimsical]
> > > > 
> > > > At 2025-03-17T14:23:09+0100, Alejandro Colomar wrote:
> > > > > On Sun, Mar 02, 2025 at 08:43:31PM +0100, Günther Noack wrote:
> > > > > >      +.TP
> > > > > >      +.B TIOCL_SELPOINTER
> > > > > >      +Show the pointer at position
> > > > > >     -+.RI ( xe ,\~ ye ).
> > > > > >     ++.RI ( xs ,\~ ys )
> > > > > >     ++or
> > > > > >     ++.RI ( xe ,\~ ye ),
> > > > > >     ++whichever is greater.
> > > > >
> > > > > Everything else looks good to me.  But,
> > > > >
> > > > > What's "greater" when you have two dimensions?
> > > > 
> > > > Since we can model the terminal display as an inner product space,
> > > > the terminal driver can compute an orthographic projection of the
> > > > plane onto a line and from there use routine arithmetic inequality
> > > > operators.
> > > 
> > > In any case, this is going to be confusing.  Can we get some wording
> > > that is obvious to a school student?
> > 
> > How about something like "... whichever is greater.
> 
> 
> > When the positions span
> > multiple horizontal lines (ys != ye),
> 
> 
> > characters are ordered left to right,
> > top to bottom, similar to when writing English text".
> 
> And greater is a character ordered first or last?

Thanks for your input!  You are correct that saying "bigger" is
unclear.  The alternatives are entertaining in a nerdy way ;-) but I'm
not sure that being mathematically exact here helps the purpose of
this man page. ;-)

The elephant in the room is that in the big scheme of things, this API
is pretty absurd: The API draws the mouse pointer at *one* position,
but there are *two* places where users can specify the coordinates.

Noone in their right mind would actually pass two coordinates and
would try to rely on the exact ordering semantics here.  The only
reasonable thing to do is to pass the coordinate in one of the two
places and leave the other place blank (0, 0).  The only ordering that
*actually* matters to callers is that their passed coordinate is
"bigger" than (0, 0).

These API semantics look like they happened by accident rather than by
intentional planning.  If the goal is to describe how an API *should*
get used, then spending too many words on ordering semantics here
would IMHO be distracting from the real thing that callers should do,
which I think should be *to fill one of the two coordinates and leave
the other blank*. :)

So if we describe this, I would like to make it as succinct as
possible and not draw unnecessary attention to it.

To make a constructive proposal, how about this phrasing:

  Show the pointer at position (xs, ys) or (xe, ye),
  whichever is later in text flow order.

?  Does that sound reasonable?

Thanks,
–Günther

