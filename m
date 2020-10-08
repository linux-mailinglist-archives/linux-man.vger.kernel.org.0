Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73DBC28758B
	for <lists+linux-man@lfdr.de>; Thu,  8 Oct 2020 16:00:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729992AbgJHOAb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Oct 2020 10:00:31 -0400
Received: from cventin.lip.ens-lyon.fr ([140.77.13.17]:58316 "EHLO
        cventin.lip.ens-lyon.fr" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729939AbgJHOAb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Oct 2020 10:00:31 -0400
X-Greylist: delayed 498 seconds by postgrey-1.27 at vger.kernel.org; Thu, 08 Oct 2020 10:00:30 EDT
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.94)
        (envelope-from <vincent@vinc17.net>)
        id 1kQWL4-00CeVR-KN; Thu, 08 Oct 2020 15:52:10 +0200
Date:   Thu, 8 Oct 2020 15:52:10 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
Message-ID: <20201008135210.GA2956488@cventin.lip.ens-lyon.fr>
Mail-Followup-To: Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <d460f3a6-c12b-637d-b474-3596611d10d3@gmail.com>
 <41ab7ed9-3ce0-f8ad-38f4-c4bbeca138f8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <41ab7ed9-3ce0-f8ad-38f4-c4bbeca138f8@gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/1.14.3+64 (75be2b07) vl-127292 (2020-06-15)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2020-10-01 18:55:04 +0200, Alejandro Colomar via Gcc wrote:
> On 2020-10-01 18:38, Michael Kerrisk (man-pages) wrote:
> > > +According to the C language standard,
> > > +a pointer to any object type may be converted to a pointer to
> > > +.I void
> > > +and back.
> > > +POSIX further requires that any pointer,
> > > +including pointers to functions,
> > > +may be converted to a pointer to
> > > +.I void
> > > +and back.
> > I know you are correct about POSIX, but which part of the
> > standard did you find this information in? The only
> > reference that I find in POSIX is the dlsym() spec. Is it
> > covered also somewhere else in the standrd?
[...]
> I've bean searching, and dlsym is the only one:
[...]
> The most explicit paragraph in dlsym is the following:
> 
> [[
> Note that conversion from a void * pointer to a function pointer as in:
> 
> fptr = (int (*)(int))dlsym(handle, "my_function");
> 
> is not defined by the ISO C standard.
> This standard requires this conversion to work correctly
> on conforming implementations.
> ]]

I think that "this conversion" applies only to the dlsym context,
and the conversion isn't defined in general. Imagine that the
void * pointer to function pointer conversion requires the compiler
to generate additional code. The compiler may be able to detect
that dlsym will not be used in some contexts (e.g. because of
always false condition) and do not generate such additional code,
making the conversion to have undefined behavior.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)
