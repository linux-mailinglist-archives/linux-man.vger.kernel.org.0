Return-Path: <linux-man+bounces-4082-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC73BC65C5
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 20:51:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30E173AFEB0
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 18:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D10A2C0268;
	Wed,  8 Oct 2025 18:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HWyjMEBe"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8151448E3
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 18:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759949495; cv=none; b=oURN7nHdvtSeXQpIQrM1+Lx2ebejOhMCr2dRsHK3smXpGvjwW6zmlxoCrJHi6Q8zw/DBP0MOfBmTTQ6hE7baNsbd6JwtyXGTQT5G4Kn8dWKQfYt9NlaCZw7GEadKdTiHTthbpb1UVnUADRN/fElJ+E2MniwD1JAX5Ja0kVxuwHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759949495; c=relaxed/simple;
	bh=UbYYhAuEi/5fe87RR+kD69I4pubmertvKus11ZKyArw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NG80RxrR56/R2AHgxN4+KwNlE8HbhvaE0we2e4C2UTljgkiGogCAcrptcQ79sWCwkj8iRruYcbXOVuRqp+qsl1eZRveXWam8O7YPivckzqYzIbz5YQoFxZEj2kWb6oTCFSTwtRUk+y9oWyNmhb1ucoqKy2eQltpyecEbE2u5VVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HWyjMEBe; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759949492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wof7STn+xg4DSSHRIZ/+9pTzwo8BoVvQCIZ8rmN7cQM=;
	b=HWyjMEBeY2ZPz78GSPfjJFRulTaOj/6ltvD5ZjibRvNXSGMztovf/ajQmeR+hF5GKbNoE5
	kzClOXR3rC5IMQ57RrrU8rF3nI7y/DP2jrttz6rewvSj4Smq3TxuigVlCAvKfbRa6jPlcn
	1b+0hrkdVeGkAE3jiAMfXKzOabnNEZo=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-260-SDoreykLN0qyN4WpR0oxWw-1; Wed, 08 Oct 2025 14:51:30 -0400
X-MC-Unique: SDoreykLN0qyN4WpR0oxWw-1
X-Mimecast-MFC-AGG-ID: SDoreykLN0qyN4WpR0oxWw_1759949489
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-46e35baddc1so5657275e9.2
        for <linux-man@vger.kernel.org>; Wed, 08 Oct 2025 11:51:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759949489; x=1760554289;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wof7STn+xg4DSSHRIZ/+9pTzwo8BoVvQCIZ8rmN7cQM=;
        b=PC4yQ2fh0OmBeT/9oXB/XEVnzkYHPagmVij3a3X9kX6Ut07hvJ4RF3vWZ42o2vSsTg
         HFjRWqvvHc7IKTKTAJ7E0z/9mxOIDPcFlyA0B6JiLlBwHPFDsRQ7mfa89xmZ0K1c0J5r
         +3lnkg9FdwYViOvTdvGZKrtuRL8LdIprp2Irz79B+h+zANoYPrk4BEBA+HqedYGEWi8I
         NMyCAQ2pJYRRch7iKd1F+Y8SQCEBVaHyzfdEj7/ArrrhOH4LvLMgJaT5b5+IRUsvpMcT
         U3liPg0fNfC/7FQ0xh1YY8owV+6qhaQOln/ab8BQZMebjDjm7ihHD0vPCB1tlpJGQFvX
         MNJg==
X-Gm-Message-State: AOJu0YwPx+s+mV7HNG17DNQUVqFUSf96eQTussWvvub7ijmOIVFlaKGz
	E1C3ihsfwPb4oXv6SqqEFbms+y803GJ/ngRP89/8fHx8bxAEiZtzjLkPez9FxITR1372zoT59EM
	u08lk+auAeBleeS+DbdsMatn79JyTEI/AkseZTQAVgRdI1f2jlT7Gtm5QYo8+sg==
X-Gm-Gg: ASbGncsDPTqhDravBGBWgb/3otOvfjh4O5z6jlFtlBQTTx+DVhILvG/VoNy0QanTPjY
	BpFvq0KcYz2t1h9JbmQAjFvenZQiYpfvlFTCp/H1tZrj337JITI9e9V0Si7FZDHqCFTuJeGiFuT
	szBoPZVbL5jrwpHXUISJjA248EzVwVoMJdDo7i7vNJZqzhg6W2nWK85VORhjpt1uW/Bu/y/OwEb
	A0C8NzN/QlM4S3J0vHI/b93wx0oWeT7Tnbcs4QgwbKqM4MXyRwwqb/9fsgoEHR1PvQ32EHJyBwG
	7eN/qgQU/3Rwtwv+63f0keaG0jx7f5PeuqQ40dOIifxkp0633l9kJrzZnd1kvJm3fPSSqMej7OK
	7Qm22/OoCr3bDWyPoLzK05MEg
X-Received: by 2002:a05:600c:8b38:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-46fa9af3682mr34821155e9.18.1759949488701;
        Wed, 08 Oct 2025 11:51:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEonU3/Yn1NuhvLxXW4EMvpCHcNbzKEG8CBc7HGOZ9qtvSq0H81ZeDUYQk3eaPF60MxHTzocQ==
X-Received: by 2002:a05:600c:8b38:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-46fa9af3682mr34821035e9.18.1759949488250;
        Wed, 08 Oct 2025 11:51:28 -0700 (PDT)
Received: from debian (2a01cb058d23d60063f64695c7af142f.ipv6.abo.wanadoo.fr. [2a01:cb05:8d23:d600:63f6:4695:c7af:142f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3d2c1asm19557775e9.1.2025.10.08.11.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:51:27 -0700 (PDT)
Date: Wed, 8 Oct 2025 20:51:24 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <aOayrL0umGBiQpsZ@debian>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
 <accjbqimswux57cgstzl2jrtqlnbxsuqhmmfjqguat7fk7kzlz@oy545lcy52to>
 <aOZ4D47TGxNPWqSE@debian>
 <z45wvnlrxlnrp367rgxotuieieyn7myfgct6lvjitn4igupo74@htps4hpfqamb>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <z45wvnlrxlnrp367rgxotuieieyn7myfgct6lvjitn4igupo74@htps4hpfqamb>

On Wed, Oct 08, 2025 at 06:05:41PM +0200, Alejandro Colomar wrote:
> Hi Guillaume,
> 
> On Wed, Oct 08, 2025 at 04:41:19PM +0200, Guillaume Nault wrote:
> > > > +.IP
> > > > +.in +4n
> > > 
> > > I would use
> > > 
> > > 	.RS
> > > 	.IP
> > > 
> > > and get rid of the .in +4n.
> > 
> > I have no preference, I was just following the commands used elsewhere
> > in this man page.
> 
> Hmmm, I'll have a look at the source of that page later.  Maybe I need
> to fix the existing code.
> 
> > > > +.TE
> > > 
> > > And here use .RE.
> > 
> > Okay, I'll use .RS/.RE in v2.
> > 
> > > > +.IP
> > > > +Metrics that are locked with
> > > > +.B RTAX_LOCK
> > > > +take precedence over the values normally used by the kernel
> > > > +(computed or assigned by a sysctl or setsockopt(2)).
> > > > +Therefore, some metrics, like
> > > > +.BR RTAX_RTO_MIN ,
> > > > +have no effect unless their bit is set in
> > > > +.BR RTAX_LOCK .
> > > > +.in
> > > 
> > > I find this placement of .in weird.  The preceding paragraph isn't
> > > indented by it.  I think I prefer using .RS/.RE, and then you'd have to
> > > put .RE before this paragraph to get the same indentation.
> > > 
> > > Here's how your patch looks like:
> > > 
> > > 	$ MANWIDTH=72 diffman-git HEAD 2>/dev/null
> > > 	--- HEAD^:man/man7/rtnetlink.7
> > > 	+++ HEAD:man/man7/rtnetlink.7
> > > 	@@ -218,7 +218,8 @@ DESCRIPTION
> > > 		     RTA_GATEWAY     protocol address      The gateway of the route
> > > 		     RTA_PRIORITY    int                   Priority of route
> > > 		     RTA_PREFSRC     protocol address      Preferred source address
> 
> [...]
> 
> > > 	+                RTAX_RTO_MIN              __u32           Minimum Retransmission TimeOut to use for this route
> > > 	+                RTAX_INITRWND             __u32           Initial size of the receive window for this route
> > > 	+                RTAX_QUICKACK             __u32           Use quick ack for this route
> > > 	+                RTAX_CC_ALGO              asciiz string   Congestion Control algorithm to use for this route
> > > 	+                RTAX_FASTOPEN_NO_COOKIE   __u32           Allow TCP Fast Open without cookie
> > > 	+
> > > 	+            Metrics that are locked with RTAX_LOCK take precedence over
> > > 	+            the values normally used by the kernel (computed or as‐
> > > 	+            signed by a sysctl or setsockopt(2)).  Therefore, some met‐
> > > 	+            rics, like RTAX_RTO_MIN, have no effect unless their bit is
> > > 	+            set in RTAX_LOCK.
> > > 	+
> > > 		     RTA_MULTIPATH contains several packed instances of struct
> > > 		     rtnexthop together with nested RTAs (RTA_GATEWAY):
> > > 	 
> > > Is this indentation what you intended?
> > 
> > Yes.
> 
> Thanks!
> 
> > Is that indentation confusing? I can change it if necessary.
> 
> The indentation is fine.  Please keep it like that.  What's confusing is
> the source code, since the '.in' goes after the unindented paragraph,
> while I'd expect it to be the indentation terminator.  .RS/.RE is much
> more intuitive.

I understand what you mean now. Placing '.in' after the RTAX_LOCK
paragraph was an oversight.

I'm about to send v2, with .in replaced by .RS/.RE, as you proposed.
Thanks for the feedbacks!

> 
> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



