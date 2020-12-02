Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 504522CC214
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 17:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728079AbgLBQUl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 11:20:41 -0500
Received: from mx2.suse.de ([195.135.220.15]:60754 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730733AbgLBQUl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 2 Dec 2020 11:20:41 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 12115AB63;
        Wed,  2 Dec 2020 16:20:00 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id CA0C91E1318; Wed,  2 Dec 2020 17:19:59 +0100 (CET)
Date:   Wed, 2 Dec 2020 17:19:59 +0100
From:   Jan Kara <jack@suse.cz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Amir Goldstein <amir73il@gmail.com>,
        Steve Grubb <sgrubb@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify: Document FAN_AUDIT flag
Message-ID: <20201202161959.GB3534@quack2.suse.cz>
References: <20201202154354.30778-1-jack@suse.cz>
 <d7a6ab1f-c852-700f-c88b-93baef1ca148@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d7a6ab1f-c852-700f-c88b-93baef1ca148@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

On Wed 02-12-20 16:57:23, Alejandro Colomar (man-pages) wrote:
> Please break lines at significant points,
> instead of just when it wraps at the right margin;
> as I did in this little paragraph.
> 
> See man-pages(7)::STYLE GUIDE::Use semantic newlines

OK, I'll do that for the submission of the next patch version.

								Honza

> On 12/2/20 4:43 PM, Jan Kara wrote:
> > Document FAN_AUDIT and related FAN_ENABLE_AUDIT flags.
> > 
> > Signed-off-by: Jan Kara <jack@suse.cz>
> > ---
> >  man2/fanotify_init.2 | 7 +++++++
> >  man7/fanotify.7      | 9 ++++++++-
> >  2 files changed, 15 insertions(+), 1 deletion(-)
> > 
> > OK, here's my attempt to document the FAN_AUDIT flag. It would be nice if
> > Steve glanced over it from the audit side to check things are sane.
> > 
> > diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> > index ca03b11dc98a..6becc7a680db 100644
> > --- a/man2/fanotify_init.2
> > +++ b/man2/fanotify_init.2
> > @@ -155,6 +155,13 @@ supplied to
> >  (see
> >  .BR fanotify (7)).
> >  .TP
> > +.BR FAN_ENABLE_AUDIT " (since Linux 4.15)"
> > +.\" commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
> > +Enable generation of audit log records about access mediation performed by
> > +permission events. The permission event response has to be marked with
> > +.B FAN_AUDIT
> > +flag for audit log record to be generated.
> > +.TP
> >  .BR FAN_REPORT_FID " (since Linux 5.1)"
> >  .\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
> >  This value allows the receipt of events which contain additional information
> > diff --git a/man7/fanotify.7 b/man7/fanotify.7
> > index 5804a1f30d6c..b5f096304cf4 100644
> > --- a/man7/fanotify.7
> > +++ b/man7/fanotify.7
> > @@ -588,7 +588,14 @@ to deny the file operation.
> >  .PP
> >  If access is denied, the requesting application call will receive an
> >  .BR EPERM
> > -error.
> > +error. Additionally, if the notification group has been created with
> > +.B FAN_ENABLE_AUDIT
> > +flag,
> > +.B FAN_AUDIT
> > +flag can be set in the
> > +.I response
> > +field. In that case audit subsystem will log information about the access
> > +decision to the audit logs.
> >  .\"
> >  .SS Closing the fanotify file descriptor
> >  When all file descriptors referring to the fanotify notification group are
> > 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
