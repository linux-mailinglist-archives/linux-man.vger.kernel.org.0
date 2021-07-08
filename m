Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B708E3C1C3F
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 01:53:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbhGHX4Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 19:56:25 -0400
Received: from gate.crashing.org ([63.228.1.57]:36454 "EHLO gate.crashing.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229491AbhGHX4Y (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 8 Jul 2021 19:56:24 -0400
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
        by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 168NnVok028725;
        Thu, 8 Jul 2021 18:49:31 -0500
Received: (from segher@localhost)
        by gate.crashing.org (8.14.1/8.14.1/Submit) id 168NnTDO028724;
        Thu, 8 Jul 2021 18:49:29 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date:   Thu, 8 Jul 2021 18:49:29 -0500
From:   Segher Boessenkool <segher@kernel.crashing.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>, gcc-help@gcc.gnu.org,
        linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fw@deneb.enyo.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strlen
Message-ID: <20210708234929.GU1583@gate.crashing.org>
References: <87363whf2z.fsf@mid.deneb.enyo.de> <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org> <87bl7fozxi.fsf@mid.deneb.enyo.de> <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org> <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com> <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com> <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org> <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com> <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org> <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
User-Agent: Mutt/1.4.2.3i
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jul 08, 2021 at 01:06:17PM +0200, Alejandro Colomar (man-pages) via Gcc-help wrote:
> On 7/8/21 12:07 PM, Jonny Grant wrote:
> >We can't guarantee safestrlen() won't be called with NULL. So because 
> >strlen() itself doesn't check for NULL in C standard we'd need to call the 
> >wrapper so that NULL can be checked for.

> >size_t __attribute__((optimize("O0"))) safestrlen(const char * s)
> >{
> >     if (NULL == s) return 0;
> >     else return strlen(s);
> >}

> That also allows differentiating a length of 0 (i.e., "") from an 
> invalid string (i.e., NULL), by returning -1 for NULL.

It is incorrect to return any particular value for strlen(0); not 0, not
-1, not anything.  Since there *is* no string, it doesn't have a length
either.

So instead of making some function for this, I recommend just writing
something like

  bla = s ? strlen(s) : 0;

wherever you need it.  If a function name isn't self-explanatory, and
even *cannot* be, your factoring is most likely not ideal.  Code is
primarily there for humans to read, it should be optimised for that.


Segher
