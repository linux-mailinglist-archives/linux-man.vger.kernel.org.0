Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6038B1B10D7
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 17:59:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726195AbgDTP7M convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 20 Apr 2020 11:59:12 -0400
Received: from vs23.mail.saunalahti.fi ([193.64.193.199]:56828 "EHLO
        vs23.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726151AbgDTP7M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 11:59:12 -0400
Received: from vs23.mail.saunalahti.fi (localhost [127.0.0.1])
        by vs23.mail.saunalahti.fi (Postfix) with ESMTP id B024F20452;
        Mon, 20 Apr 2020 18:59:10 +0300 (EEST)
Received: from gw03.mail.saunalahti.fi (gw03.mail.saunalahti.fi [195.197.172.111])
        by vs23.mail.saunalahti.fi (Postfix) with ESMTP id AE26D20923;
        Mon, 20 Apr 2020 18:59:10 +0300 (EEST)
Received: from [192.168.1.20] (87-100-216-152.bb.dnainternet.fi [87.100.216.152])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kh8831)
        by gw03.mail.saunalahti.fi (Postfix) with ESMTPSA id A773F20003;
        Mon, 20 Apr 2020 18:59:07 +0300 (EEST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: Errors in man pages, here: st.4.po: Wording
From:   =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
In-Reply-To: <9342d9e7-5629-6908-918a-44270d4e7b4f@gmail.com>
Date:   Mon, 20 Apr 2020 18:59:07 +0300
Cc:     Helge Kreutzmann <debian@helgefjell.de>, linux-man@vger.kernel.org
Content-Transfer-Encoding: 8BIT
Message-Id: <60355D0B-FEDB-4F67-8B38-E3614B9BAC97@kolumbus.fi>
References: <20200419064826.GA32071@Debian-50-lenny-64-minimal>
 <9342d9e7-5629-6908-918a-44270d4e7b4f@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



> On 20. Apr 2020, at 12.48, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> 
> [CC += Kai]
> 
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
>> Dear manpages maintainers.
>> 
...
>> **
>> 
>> media → data
>> 
>> msgid "Go to the end of the recorded media (for appending files)."
>> 
End of media is the end of the tape. End of recorded media means
after the last record/filemark that has been written to the tape. Usually
(not always) you can write more data after what has been written
so far. End of recorded media is standard tape terminology.

>> --
>> drive → media
>> 
>> "B<GMT_WR_PROT>(I<x>): The drive is write-protected.  For some drives this "
>> "can also mean that the drive does not support writing on the current medium "
>> "type."
> 
This basically means that the drive refuses to write to the media. It can be
write-protected by the user. The additional text hints at the possibility
that the drive can only read the media type in the drive. It is quite
common that drives can read, for instance, several old formats
(usually with smaller capacity) but can write only the newest types.
Many times the user may not know very well the properties of the
drive and wonders, why can’t I write even if the tape can be read
and the write protect tab is off.

Thanks,
Kai

