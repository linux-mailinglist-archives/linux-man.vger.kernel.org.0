Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1A24241ACD
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 14:10:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728526AbgHKMKE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 08:10:04 -0400
Received: from l2mail1.panix.com ([166.84.1.75]:51646 "EHLO l2mail1.panix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728423AbgHKMKC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 11 Aug 2020 08:10:02 -0400
X-Greylist: delayed 1119 seconds by postgrey-1.27 at vger.kernel.org; Tue, 11 Aug 2020 08:10:02 EDT
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
        by l2mail1.panix.com (Postfix) with ESMTPS id 4BQrlG6QBDzDSb
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 07:51:22 -0400 (EDT)
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
        by mailbackend.panix.com (Postfix) with ESMTP id 4BQrlF4FZ6zhX2;
        Tue, 11 Aug 2020 07:51:21 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 415)
        id 4BQrlF5bf4zfYm; Tue, 11 Aug 2020 07:51:21 -0400 (EDT)
Date:   Tue, 11 Aug 2020 07:51:21 -0400
From:   Thor Lancelot Simon <tls@NetBSD.ORG>
To:     mtk.manpages@gmail.com
Cc:     Larry Dwyer <larryd.kbd@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Geoff Clare <gwc@opengroup.org>, austin-group-l@opengroup.org,
        Andrew Josey <ajosey@opengroup.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Elliot Hughes <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <20200811115121.GA29807@panix.com>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
 <20200810135821.GA11918@panix.com>
 <3ace6e62-d3cc-ef7b-56b2-9b6b5c724d5b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3ace6e62-d3cc-ef7b-56b2-9b6b5c724d5b@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Aug 11, 2020 at 10:31:58AM +0200, Michael Kerrisk (man-pages) wrote:
> On 8/10/20 3:58 PM, Thor Lancelot Simon wrote:
> > On Sat, Aug 08, 2020 at 04:18:10PM -0700, Larry Dwyer via austin-group-l at The Open Group wrote:
> >> How about the "control" side and the "terminal" side (of the paired device
> >> files)?
> > 
> > How about the "pty side" and the "tty side"?  It seems hard to be more
> > neutral than that and we can be sure there is no ambiguity.
> 
> This is an option that came up in the glibc/Linux man-pages discussion.
> My objection is that I want proper nouns that one can use in a prose
> description of pseudoterminals.

All names are proper nouns.

They might not be the particular proper nouns that we're used to seeing,
but they are still proper nouns!

Thor
