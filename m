Return-Path: <linux-man+bounces-2652-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D613FA70FFF
	for <lists+linux-man@lfdr.de>; Wed, 26 Mar 2025 05:58:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6ACB03B92ED
	for <lists+linux-man@lfdr.de>; Wed, 26 Mar 2025 04:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16022157A48;
	Wed, 26 Mar 2025 04:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b="wafeWuRo"
X-Original-To: linux-man@vger.kernel.org
Received: from greenhill.hpalace.com (greenhill.hpalace.com [192.155.80.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C6B16DEB1
	for <linux-man@vger.kernel.org>; Wed, 26 Mar 2025 04:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.155.80.58
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742965082; cv=none; b=px79NdF+upVfdyeLcz4Q5v4DppZqZVWx7gI0tn8UKrJWHrrlqZ/4Oo+WxPbjUibq8ax9u2HID4rsbOQ7I9hvx5pEVB6qY5EdSSHYn02ldwqOz7gAIu098GgmnKCJ2AhkZtNGJBWIvBoSCYIdEhdxx5QssY14Vaj1Cp7WUU3S3J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742965082; c=relaxed/simple;
	bh=jZxUyyxit8yvAweru7e4x4zt3zh9g/Cpxh0GNxTAwz8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=istp2VtFsyYBKor3TlzKUvlMQvj7baWl8/614sZVSFGtXmuXEpo/N97+LKz9tPd96TlIEppTWQ2YNmuq1m4cqKm0qirs6zS/QDidKd9+x9Rmiq6M+NMYySa+84Tuyu/ogSQ/mCdO6KigCH62HohO7TcT/evsp9YKS2kcYXmaARM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org; spf=pass smtp.mailfrom=finder.org; dkim=pass (2048-bit key) header.d=finder.org header.i=@finder.org header.b=wafeWuRo; arc=none smtp.client-ip=192.155.80.58
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=finder.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=finder.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=finder.org; s=2018;
	t=1742964538; bh=jZxUyyxit8yvAweru7e4x4zt3zh9g/Cpxh0GNxTAwz8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=wafeWuRoyM4urpKUr6LLBXr7F6m5bOc9SuBoKLN5sp+bOBVwhTnLOuJOIGAz6fxaP
	 mNAFsJSGtyw8WmBhwwbQ/rMe8t6sEjEiJ9ybihtZ7DB1m6ypvMIwdvr1zXelq2MqJr
	 a9vpwjOdsT1WSumWfuefn0mzRmDjZvBpP5YgL69vQNcKjKMAmvMsGLR9xZdAWaqWqf
	 ObV7mRXqiWUtrdsLZhkUgTC0tnMESklEBr/9mGsx/J1g2Wg+zWKMwd2VTWQb9m6quy
	 vWwozgyOCXWXmSnQwbb9P9zwFuGlg8PKkpBH0Iv2cuR70Fv0Z8HZ9iXn7v/98dJceq
	 cikw9yEHarZZw==
Received: from mail.finder.org (unknown [192.155.80.58])
	by greenhill.hpalace.com (Postfix) with ESMTPSA id 2769A67D;
	Wed, 26 Mar 2025 04:48:58 +0000 (UTC)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Tue, 25 Mar 2025 21:48:58 -0700
From: Jared Finder <jared@finder.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, =?UTF-8?Q?G?=
 =?UTF-8?Q?=C3=BCnther_Noack?= <gnoack3000@gmail.com>,
 linux-man@vger.kernel.org, =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
In-Reply-To: <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
 <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
Message-ID: <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>
X-Sender: jared@finder.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

On 2025-03-22 12:37, Alejandro Colomar wrote:
> Hi all,
> 
> On Mon, Mar 17, 2025 at 12:43:40PM -0500, G. Branden Robinson wrote:
>> [somewhat whimsical]
>> 
>> At 2025-03-17T14:23:09+0100, Alejandro Colomar wrote:
>> > On Sun, Mar 02, 2025 at 08:43:31PM +0100, Günther Noack wrote:
>> > >      +.TP
>> > >      +.B TIOCL_SELPOINTER
>> > >      +Show the pointer at position
>> > >     -+.RI ( xe ,\~ ye ).
>> > >     ++.RI ( xs ,\~ ys )
>> > >     ++or
>> > >     ++.RI ( xe ,\~ ye ),
>> > >     ++whichever is greater.
>> >
>> > Everything else looks good to me.  But,
>> >
>> > What's "greater" when you have two dimensions?
>> 
>> Since we can model the terminal display as an inner product space,
>> the terminal driver can compute an orthographic projection of the
>> plane onto a line and from there use routine arithmetic inequality
>> operators.
> 
> In any case, this is going to be confusing.  Can we get some wording
> that is obvious to a school student?

How about something like "... whichever is greater. When the positions 
span multiple horizontal lines (ys != ye), characters are ordered left 
to right, top to bottom, similar to when writing English text".

   -- MJF

