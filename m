Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B7151B1527
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726439AbgDTSvR convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 20 Apr 2020 14:51:17 -0400
Received: from vs21.mail.saunalahti.fi ([193.64.193.197]:58262 "EHLO
        vs21.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726013AbgDTSvR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:51:17 -0400
Received: from vs21.mail.saunalahti.fi (localhost [127.0.0.1])
        by vs21.mail.saunalahti.fi (Postfix) with ESMTP id 01B89203A0;
        Mon, 20 Apr 2020 21:51:15 +0300 (EEST)
Received: from gw01.mail.saunalahti.fi (gw01.mail.saunalahti.fi [195.197.172.115])
        by vs21.mail.saunalahti.fi (Postfix) with ESMTP id E77FE20375;
        Mon, 20 Apr 2020 21:51:14 +0300 (EEST)
Received: from [192.168.1.20] (87-100-216-152.bb.dnainternet.fi [87.100.216.152])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kh8831)
        by gw01.mail.saunalahti.fi (Postfix) with ESMTPSA id D83D140009;
        Mon, 20 Apr 2020 21:51:11 +0300 (EEST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: Errors in man pages, here: st(4): Content
From:   =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
In-Reply-To: <CAKgNAkgrAUWJyjtv8Q=Pwwa_=QThTaQGz4v_W46+5gD7QEHEJA@mail.gmail.com>
Date:   Mon, 20 Apr 2020 21:51:11 +0300
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Transfer-Encoding: 8BIT
Message-Id: <168DA6F5-D54B-48E4-A8E1-3FF081ABE6BC@kolumbus.fi>
References: <20200419064827.GA32117@Debian-50-lenny-64-minimal>
 <dd5fdce8-8329-5951-43da-34aeafae542f@gmail.com>
 <4A645675-6A27-4CC9-B8A8-EB7644DEC710@kolumbus.fi>
 <CAKgNAkgrAUWJyjtv8Q=Pwwa_=QThTaQGz4v_W46+5gD7QEHEJA@mail.gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



> On 20. Apr 2020, at 21.29, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> 
> Hello Kai,
> 
> On Mon, 20 Apr 2020 at 17:51, "Kai Mäkisara (Kolumbus)"
> <kai.makisara@kolumbus.fi> wrote:
>> 
>> 
>> 
>>> On 20. Apr 2020, at 11.13, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
>>> 
>>> [CC += Kai]
>>> 
>>> (Kai, I got a pile of queries from a downstream translation project)
>>> 
>>> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
>>>> Dear manpages maintainers.
>>>> 
>> ...
>>>> We cannot understand the last sentence. What is "forward spacing"?
>>>> 
>>>> "This option causes the B<MTEOM> operation to be sent directly to the drive, "
>>>> "potentially speeding up the operation but causing the driver to lose track "
>>>> "of the current file number normally returned by the B<MTIOCGET> request.  If "
>>>> "B<MT_ST_FAST_EOM> is false, the driver will respond to an B<MTEOM> request "
>>>> "by forward spacing over files."
>>> 
>>> Perhaps Kai can help. I do not have a good explanation.
>>> 
>> Spacing in tape terminology means going to the next file (or record or set mark).
>> The drives usually support a command to go to the end of the tape. The
>> drawback is that no information is obtained about the number of files skipped.
>> If the driver spaces forward over files one by one, it can count how many
>> files have been skipped.
>> 
>> This is the technical description. But the text also says what is the consequence
>> for a user that does not care about technology. Spacing is mentions also
>> earlier in the text.
> 
> So, no text changes needed here, right?
> 
I don’t think changes are needed. But the discussion in my other answer applies
also here.

Thanks,
Kai

