Return-Path: <linux-man+bounces-205-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBE1801762
	for <lists+linux-man@lfdr.de>; Sat,  2 Dec 2023 00:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DD761C20A1B
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 23:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC1B43F8E6;
	Fri,  1 Dec 2023 23:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="XT0fBX5g"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8113F8D3
	for <linux-man@vger.kernel.org>; Fri,  1 Dec 2023 23:14:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76C70C433C7;
	Fri,  1 Dec 2023 23:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1701472449;
	bh=7FjnkdP5vI8fj5bq+qDKXQ1iZPWq5iQApZxmngdcBek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XT0fBX5gu8pF37zljoJ829jBh0inzMDJN4LVhG0TfLB1qAa0z2k6imPy1j24mUh1I
	 NdpM3PZAIiZGrE/8TcYGEGU7OMx+dEtsetO/u1iVOoHTaH7c2LX1g1nmmyyuvi1pFm
	 VzS4qBfH5x18dqdODu3xu97XmdUxNksKWMqIed8o=
Date: Sat, 2 Dec 2023 00:14:06 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack@google.com>,
	Alejandro Colomar <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org,
	Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)
Message-ID: <2023120253-handed-protector-fc81@gregkh>
References: <20231201122645.3237941-1-gnoack@google.com>
 <ZWnYCcuJql0Pm4Yr@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZWnYCcuJql0Pm4Yr@debian>

On Fri, Dec 01, 2023 at 01:56:41PM +0100, Alejandro Colomar wrote:
> Hi Günther, Greg,
> 
> On Fri, Dec 01, 2023 at 01:26:45PM +0100, Günther Noack wrote:
> > Since Linux commit 8d1b43f6a6df7bce ("tty: Restrict access to TIOCLINUX'
> > copy-and-paste subcommands"), the TIOCL_SETSEL, TIOCL_PASTESEL and
> > TIOCL_SELLOADLUT subcommands require CAP_SYS_ADMIN.
> > 
> > Cc: Hanno Böck <hanno@hboeck.de>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Günther Noack <gnoack@google.com>
> > ---
> >  man2/ioctl_console.2 | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
> > index 684b4d013..abc50b786 100644
> > --- a/man2/ioctl_console.2
> > +++ b/man2/ioctl_console.2
> > @@ -715,12 +715,20 @@ is 0 for character-by-character selection,
> >  or 2 for line-by-line selection.
> >  The indicated screen characters are highlighted and saved
> >  in a kernel buffer.
> > +.IP
> > +Since Linux 6.7, using this subcode requires the
> 
> Are these requirements expected to be backported to stable kernels?

I don't think so, do you think they should be?

thanks,

greg k-h

