Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1ABF0240755
	for <lists+linux-man@lfdr.de>; Mon, 10 Aug 2020 16:16:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726937AbgHJOQu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Aug 2020 10:16:50 -0400
Received: from l2mail1.panix.com ([166.84.1.75]:50004 "EHLO l2mail1.panix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726932AbgHJOQu (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 10 Aug 2020 10:16:50 -0400
X-Greylist: delayed 1106 seconds by postgrey-1.27 at vger.kernel.org; Mon, 10 Aug 2020 10:16:48 EDT
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
        by l2mail1.panix.com (Postfix) with ESMTPS id 4BQHcH3MG6zF78
        for <linux-man@vger.kernel.org>; Mon, 10 Aug 2020 09:58:23 -0400 (EDT)
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
        by mailbackend.panix.com (Postfix) with ESMTP id 4BQHcF2qpgz1nS4;
        Mon, 10 Aug 2020 09:58:21 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 415)
        id 4BQHcF3LcjzfYm; Mon, 10 Aug 2020 09:58:21 -0400 (EDT)
Date:   Mon, 10 Aug 2020 09:58:21 -0400
From:   Thor Lancelot Simon <tls@panix.com>
To:     Larry Dwyer <larryd.kbd@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        austin-group-l@opengroup.org, Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zackw@panix.com>,
        Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Andrew Josey <ajosey@opengroup.org>,
        Joseph Myers <joseph@codesourcery.com>,
        linux-man <linux-man@vger.kernel.org>,
        Geoff Clare <gwc@opengroup.org>,
        Elliot Hughes <enh@google.com>,
        libc-alpha <libc-alpha@sourceware.org>
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <20200810135821.GA11918@panix.com>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Aug 08, 2020 at 04:18:10PM -0700, Larry Dwyer via austin-group-l at The Open Group wrote:
> How about the "control" side and the "terminal" side (of the paired device
> files)?

How about the "pty side" and the "tty side"?  It seems hard to be more
neutral than that and we can be sure there is no ambiguity.

Thor
