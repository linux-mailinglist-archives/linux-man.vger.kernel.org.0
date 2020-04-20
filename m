Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C88E41B105F
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 17:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726415AbgDTPmJ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 20 Apr 2020 11:42:09 -0400
Received: from vs21.mail.saunalahti.fi ([193.64.193.197]:43242 "EHLO
        vs21.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725937AbgDTPmI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 11:42:08 -0400
X-Greylist: delayed 359 seconds by postgrey-1.27 at vger.kernel.org; Mon, 20 Apr 2020 11:42:07 EDT
Received: from vs21.mail.saunalahti.fi (localhost [127.0.0.1])
        by vs21.mail.saunalahti.fi (Postfix) with ESMTP id 00DAC212D1;
        Mon, 20 Apr 2020 18:42:06 +0300 (EEST)
Received: from gw03.mail.saunalahti.fi (gw03.mail.saunalahti.fi [195.197.172.111])
        by vs21.mail.saunalahti.fi (Postfix) with ESMTP id F303F21025;
        Mon, 20 Apr 2020 18:42:05 +0300 (EEST)
Received: from [192.168.1.20] (87-100-216-152.bb.dnainternet.fi [87.100.216.152])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kh8831)
        by gw03.mail.saunalahti.fi (Postfix) with ESMTPSA id E95D720005;
        Mon, 20 Apr 2020 18:42:02 +0300 (EEST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: Errors in man pages, here: st(4): Content
From:   =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
In-Reply-To: <532e2c98-09ca-ee0c-be4b-0c51d4b42eef@gmail.com>
Date:   Mon, 20 Apr 2020 18:42:02 +0300
Cc:     Helge Kreutzmann <debian@helgefjell.de>, linux-man@vger.kernel.org
Content-Transfer-Encoding: 8BIT
Message-Id: <C47149A4-47DA-4E85-A9D0-E9A4229B58C4@kolumbus.fi>
References: <20200419064828.GA32141@Debian-50-lenny-64-minimal>
 <532e2c98-09ca-ee0c-be4b-0c51d4b42eef@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



> On 20. Apr 2020, at 11.11, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> 
> [CC += Kai]
> 
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
>> Dear manpages maintainers.
>> the manpage-l10n project maintains a large number of translations of
...
> 
> I do not know. Perhaps Kai can help.
> 
> Kai, the text in question is
> 
>              MT_ST_AUTO_LOCK (Default: false)
>                     When this option is true, the drive door  is  locked
>                     when  the  device  is opened and unlocked when it is
>                     closed.
> 
> I believe Helge asks whether the text should read:
> 
>              MT_ST_AUTO_LOCK (Default: false)
>                     When this option is true, the drive door  is  locked
>                     when  the  device  is CLOSED and unlocked when it is
>                     OPEN.
> 
The orginal text is correct. This is section 4 man page meaning that it
describes the programming interface, Opening the device means
opening the device file, i.e., starting to use the device from the
computer and the drive should be closed when the drive is operating.
It can be opened when the device file is closed and the device is
not in use.

This might be clearer if the text would say “when the device file is
opened”? I admit that the original text, while correct, may not be
obvious to non-programmers.

Thanks,
Kai

