Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55AFD6DBF61
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 11:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbjDIJvB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 05:51:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjDIJvA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 05:51:00 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA4A26A5
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 02:50:59 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 3399oIHD029410
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Sun, 9 Apr 2023 11:50:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1681033820; bh=rBSVxzjYO9RHfQKg+a5PU+pr3Py8sI8fJOuJlPzsGCE=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=Ezfzr5e4fd45iIBUJ9Navlv5js08y25SHKYsZeK72NpBS76d84PO4lglq2lscaZEk
         iIFHx5pJGo7af1P1eYmP+4H/T8Q5kXbmSqhL8E47DEpXbxfZlJ3vit7OTGuiXVJ6YO
         ObVHt39FQ0O0jsdLPwRbkxmdvz+j58JkZlzoZJJs=
From:   Dirk Gouders <dirk@gouders.net>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Colin Watson <cjwatson@debian.org>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, nabijaczleweli@nabijaczleweli.xyz,
        g.branden.robinson@gmail.com, groff@gnu.org
Subject: Re: Accessibility of man pages
In-Reply-To: <ZDHtGq2XbJIcRMcD@asta-kit.de> (Ingo Schwarze's message of "Sun,
        9 Apr 2023 00:39:22 +0200")
References: <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <83sfddqvk3.fsf@gnu.org>
        <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
        <837cumonv9.fsf@gnu.org>
        <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
        <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
        <ZDHPH4wOu+jYqFI9@asta-kit.de> <gh8rf2ks3v.fsf@gouders.net>
        <ZDHtGq2XbJIcRMcD@asta-kit.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Sun, 09 Apr 2023 11:50:12 +0200
Message-ID: <gh1qktl6zv.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ingo,

Ingo Schwarze <schwarze@usta.de> writes:
> Dirk Gouders wrote on Sat, Apr 08, 2023 at 10:59:32PM +0200:
>> Ingo Schwarze <schwarze@usta.de> writes:
>>> Dirk Gouders wrote on Sat, Apr 08, 2023 at 09:48:13PM +0200:
>
>>>> Yes, it's very slow but close to `man -K`:
>>>> 
>>>> find...             man -K...
>>>> 
>>>> real 107.45         real 96.34
>>>> user 117.06         user 70.11
>>>> sys 14.43           sys 26.86
>>>> 
>>>> [a thought later]
>>>> 
>>>> Oh, I found something much faster:
>>>> 
>>>> $ time -p find /usr/share/man -type f | xargs bzgrep -l RLIMIT_NOFILE
>>>> [snip]
>>>> 
>>>> real 24.30
>>>> user 32.34
>>>> sys 6.84
>>>> 
>>>> Hmm, perhaps, someone has an explanation for this?
>
>>> These are all terribly slow IMHO.
>>>
>>> For comparison, this happens on my OpenBSD notebook, with more than
>>> five hundred optional software packages installed in addition to the
>>> complete default installation:
>>>
>>>    $ time man -k any=RLIMIT_NOFILE
>>>   dup, dup2, dup3(2) - duplicate an existing file descriptor
>>>   getrlimit, setrlimit(2) - control maximum system resource consumption
>>>   sudoers(5) - default sudo security policy plugin
>>>     0m00.21s real     0m00.00s user     0m00.03s system
>
>> Yes, this is really fast and would allow for quite interesting ways to
>> work with manual pages.
>> 
>> But, OpenBSD's `man -k` operates on a makewhatis(8) database and not
>> on every single manual page or am I wrong?
>
> Yes, you are completely correct about that.
> The database format is documented here:
>
>   https://man.openbsd.org/mandoc.db.5
>
> And the search syntax here:
>
>   https://man.openbsd.org/apropos.1
>
> The concept works very well because in contrast to man(7), mdoc(7)
> provides substatial semantic markup (without being harder to write
> or maintain).
>
> The comparison seemed relevant to me because as far as i understood the
> intention of the thread, participants were looking for ideas to make
> searching for content in manual pages more powerful and more efficient.
> The combination of semantic markup and indexing of marked up content
> is one way to make progress in that direction, and the combination
> of mdoc(7) with mandoc(1) is an example of a system demonstrating
> the concept.

Very interesting.  I gues that makewhatis(8) then has to cope both
formats (man(7) and mdoc(7)) and from between the lines I read that it
is not really a problem.

Are there any outstanding queries mdoc(7) enables that man(7) cannot?
From what I read so far with mdoc(7) it should be very easy (by querying
.Xr), for example to get an answer to the question "Which manual pages
are referencing me?" (From inside a pager, for example).

> I understand people familiar with GNU info(1) pointed out that
> providing index entries that do not correspond to marked up
> content is also occasionally useful.  I do not completely disagree
> with that, and the mdoc(7) language as implemented by mandoc(1)
> provides a dedicated macro to do just that:
>
>   https://man.openbsd.org/mdoc.7#Tg

My role in this thread is not an experts one but the one of a naive guy
who plays with an experimental pager (lsp(1)) that tries to offer some
additional features for handling manual pages.

I read that with .Tg tags are passed to the PAGER and with less(1) one
could use :t to navigate to them.  I tried to see how this works and
wonder how the user knows which tags are available -- maybe man-db's
man(1) doesn't support this...

If your time allows and it's not too off-topic, perhaps you could
provide more detail, e.g. if I can make use of the .Tg tags on a
non-OpenBSD system.

Regards,

Dirk
