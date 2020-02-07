Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC1B156019
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 21:45:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727018AbgBGUo7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 15:44:59 -0500
Received: from tartarus.angband.pl ([54.37.238.230]:52896 "EHLO
        tartarus.angband.pl" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726947AbgBGUo7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 15:44:59 -0500
X-Greylist: delayed 2227 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Feb 2020 15:44:58 EST
Received: from kilobyte by tartarus.angband.pl with local (Exim 4.92)
        (envelope-from <kilobyte@angband.pl>)
        id 1j09uo-0008Ju-5u; Fri, 07 Feb 2020 21:07:50 +0100
Date:   Fri, 7 Feb 2020 21:07:50 +0100
From:   Adam Borowski <kilobyte@angband.pl>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] console_codes.4: \e[38m and \e[48m
Message-ID: <20200207200750.GA31950@angband.pl>
References: <20190308194059.9560-1-kilobyte@angband.pl>
 <20190308194059.9560-2-kilobyte@angband.pl>
 <89fad223-3e6c-2b65-17ce-a4e19e45ff32@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <89fad223-3e6c-2b65-17ce-a4e19e45ff32@gmail.com>
X-Junkbait: aaron@angband.pl, zzyx@angband.pl
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: kilobyte@angband.pl
X-SA-Exim-Scanned: No (on tartarus.angband.pl); SAEximRunCond expanded to false
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Feb 07, 2020 at 05:26:09PM +0100, Michael Kerrisk (man-pages) wrote:
> Hello Adam,
> 
> On 3/8/19 8:40 PM, Adam Borowski wrote:
> > Supported since cec5b2a9 (3.16).
> > 
> > Signed-off-by: Adam Borowski <kilobyte@angband.pl>
> > ---
> >  man4/console_codes.4 | 15 +++++++++++++--
> >  1 file changed, 13 insertions(+), 2 deletions(-)
> > 
> > diff --git a/man4/console_codes.4 b/man4/console_codes.4
> > index d605b058d..4283efe45 100644
> > --- a/man4/console_codes.4
> > +++ b/man4/console_codes.4
> > @@ -271,8 +271,8 @@ T}
> >  35	set magenta foreground
> >  36	set cyan foreground
> >  37	set white foreground
> > -38	set underscore on, set default foreground color
> > -39	set underscore off, set default foreground color
> > +38	256/24-bit foreground color follows, shoehorned into 16 basic colors
> > +39	set default foreground color
> 
> So here, I think it's important to retain the historical info, so
> I made this text:
> 
>        38        256/24-bit foreground color follows, shoehorned  into  16
>                  basic  colors  (before Linux 3.16: set underscore on, set
>                  default foreground color)
>        39        set default foreground  color  (before  Linux  3.16:  set
>                  underscore off, set default foreground color)
> 
> Okay?

Sounds good.


Meow!

-- 
⢀⣴⠾⠻⢶⣦⠀ The ill-thought conversion to time64_t will make us suffer from
⣾⠁⢠⠒⠀⣿⡁ the Y292B problem.  So let's move the Epoch by 435451400064000000
⢿⡄⠘⠷⠚⠋⠀ (plus a safety margin in case of bad physicists) and make it
⠈⠳⣄⠀⠀⠀⠀ unsigned -- that'll almost double the range.
