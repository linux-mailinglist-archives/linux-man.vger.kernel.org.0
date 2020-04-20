Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47CE91B10CF
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 17:56:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726412AbgDTP4g convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 20 Apr 2020 11:56:36 -0400
Received: from vs25.mail.saunalahti.fi ([62.142.117.202]:54294 "EHLO
        vs25.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726161AbgDTP4g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 11:56:36 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Mon, 20 Apr 2020 11:56:35 EDT
Received: from vs25.mail.saunalahti.fi (localhost [127.0.0.1])
        by vs25.mail.saunalahti.fi (Postfix) with ESMTP id 9C5B120C6B;
        Mon, 20 Apr 2020 18:51:32 +0300 (EEST)
Received: from gw03.mail.saunalahti.fi (gw03.mail.saunalahti.fi [195.197.172.111])
        by vs25.mail.saunalahti.fi (Postfix) with ESMTP id 9AF3720CBB;
        Mon, 20 Apr 2020 18:51:32 +0300 (EEST)
Received: from [192.168.1.20] (87-100-216-152.bb.dnainternet.fi [87.100.216.152])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kh8831)
        by gw03.mail.saunalahti.fi (Postfix) with ESMTPSA id 9016520005;
        Mon, 20 Apr 2020 18:51:29 +0300 (EEST)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: Errors in man pages, here: st(4): Content
From:   =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
In-Reply-To: <dd5fdce8-8329-5951-43da-34aeafae542f@gmail.com>
Date:   Mon, 20 Apr 2020 18:51:29 +0300
Cc:     Helge Kreutzmann <debian@helgefjell.de>, linux-man@vger.kernel.org
Content-Transfer-Encoding: 8BIT
Message-Id: <4A645675-6A27-4CC9-B8A8-EB7644DEC710@kolumbus.fi>
References: <20200419064827.GA32117@Debian-50-lenny-64-minimal>
 <dd5fdce8-8329-5951-43da-34aeafae542f@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



> On 20. Apr 2020, at 11.13, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> 
> [CC += Kai]
> 
> (Kai, I got a pile of queries from a downstream translation project)
> 
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
>> Dear manpages maintainers.
>> 
...
>> We cannot understand the last sentence. What is "forward spacing"?
>> 
>> "This option causes the B<MTEOM> operation to be sent directly to the drive, "
>> "potentially speeding up the operation but causing the driver to lose track "
>> "of the current file number normally returned by the B<MTIOCGET> request.  If "
>> "B<MT_ST_FAST_EOM> is false, the driver will respond to an B<MTEOM> request "
>> "by forward spacing over files."
> 
> Perhaps Kai can help. I do not have a good explanation.
> 
Spacing in tape terminology means going to the next file (or record or set mark).
The drives usually support a command to go to the end of the tape. The
drawback is that no information is obtained about the number of files skipped.
If the driver spaces forward over files one by one, it can count how many
files have been skipped.

This is the technical description. But the text also says what is the consequence
for a user that does not care about technology. Spacing is mentions also
earlier in the text.

Thanks,
Kai

