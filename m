Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9646B1B1524
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:49:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726050AbgDTStr convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 20 Apr 2020 14:49:47 -0400
Received: from vs23.mail.saunalahti.fi ([193.64.193.199]:52204 "EHLO
        vs23.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726013AbgDTStr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:49:47 -0400
Received: from vs23.mail.saunalahti.fi (localhost [127.0.0.1])
        by vs23.mail.saunalahti.fi (Postfix) with ESMTP id 677652031E;
        Mon, 20 Apr 2020 21:49:45 +0300 (EEST)
Received: from gw03.mail.saunalahti.fi (gw03.mail.saunalahti.fi [195.197.172.111])
        by vs23.mail.saunalahti.fi (Postfix) with ESMTP id 5C44120316;
        Mon, 20 Apr 2020 21:49:45 +0300 (EEST)
Received: from [192.168.1.20] (87-100-216-152.bb.dnainternet.fi [87.100.216.152])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kh8831)
        by gw03.mail.saunalahti.fi (Postfix) with ESMTPSA id 50B0A20005;
        Mon, 20 Apr 2020 21:49:42 +0300 (EEST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: Errors in man pages, here: st.4.po: Wording
From:   =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
In-Reply-To: <CAKgNAkiQXgavV88Aou8e3MQ=HO2vyp4FFBZ7Q5GXuXD20EUMLw@mail.gmail.com>
Date:   Mon, 20 Apr 2020 21:49:42 +0300
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Transfer-Encoding: 8BIT
Message-Id: <7FA79E79-F535-41C7-874C-067DA41E07D8@kolumbus.fi>
References: <20200419064826.GA32071@Debian-50-lenny-64-minimal>
 <9342d9e7-5629-6908-918a-44270d4e7b4f@gmail.com>
 <60355D0B-FEDB-4F67-8B38-E3614B9BAC97@kolumbus.fi>
 <CAKgNAkiQXgavV88Aou8e3MQ=HO2vyp4FFBZ7Q5GXuXD20EUMLw@mail.gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

> On 20. Apr 2020, at 21.25, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> 
> Hello Kai,
> 
> On Mon, 20 Apr 2020 at 17:59, "Kai Mäkisara (Kolumbus)"
> <kai.makisara@kolumbus.fi> wrote:
>> 
>> 
>> 
>>> On 20. Apr 2020, at 12.48, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
>>> 
>>> [CC += Kai]
>>> 
>>> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
>>>> Dear manpages maintainers.
>>>> 
>> ...
>>>> **
>>>> 
>>>> media → data
>>>> 
>>>> msgid "Go to the end of the recorded media (for appending files)."
>>>> 
>> End of media is the end of the tape. End of recorded media means
>> after the last record/filemark that has been written to the tape. Usually
>> (not always) you can write more data after what has been written
>> so far. End of recorded media is standard tape terminology.
>> 
>>>> --
>>>> drive → media
>>>> 
>>>> "B<GMT_WR_PROT>(I<x>): The drive is write-protected.  For some drives this "
>>>> "can also mean that the drive does not support writing on the current medium "
>>>> "type."
>>> 
>> This basically means that the drive refuses to write to the media. It can be
>> write-protected by the user. The additional text hints at the possibility
>> that the drive can only read the media type in the drive. It is quite
>> common that drives can read, for instance, several old formats
>> (usually with smaller capacity) but can write only the newest types.
>> Many times the user may not know very well the properties of the
>> drive and wonders, why can’t I write even if the tape can be read
>> and the write protect tab is off.
> 
> So, if I understand right, then no changes to the wording are required?
> 
I don’t think changes are necessarily needed. I don’t find any errors
here. But when the text is not clear to readers, I always ask myself,
should it be made clearer. I have understood that the man pages
must be precise, but not too long. The requirements are different
for the different sections of man pages. For instance, section 1 is
meant for “ordinary” users but section 4 is for low-level interface
to device drivers. I think we can assume that the users of 
section 4 have some technical knowledge about the device they
are interested in programming.

So, I don’t think changes are necessary. But I don’t object if someone
wants to enhance the descriptions as long as they are precise and
not too long.

Thanks,
Kai

