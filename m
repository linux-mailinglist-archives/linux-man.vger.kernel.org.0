Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD88276B90
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 10:15:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727218AbgIXIPf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 04:15:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727207AbgIXIPf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 04:15:35 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C08AC0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 01:15:35 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id r7so3180186ejs.11
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 01:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XH5500UO76QnT6o3jKHOWPuGPDO+DzLhxw92qc95knk=;
        b=gHr4kyr0w9Ns2lb79WBz2KL7ooWEWwn7pV7zxMQwEEe9uTqWguYt6kRh1IbOz7MAZd
         ga9Kjlv6kMFAA7KoKqH0woanLPUSvqk0TppGLFKc8PnvL8d2M+gDPHFyzZ12RMCoqsCJ
         /uwop2HAtefliJZpeMlj5Cjwzf+C8ngFGXBYAfB4K5HEDGhSuGIBEpFLbHSK7DT3rE02
         I7hr/ke5Glcc65X6DCE/Fw39H540k0zZk0zDaEArrgAWqQXDFuOPM8Xhfk3zz8a4miAi
         nCPyKRrshiyYqQWT+G5AWHGoG1PdncnXkGVVmlsWjIXRYcdhtkfJOS+7qtH7qalNMWcL
         dmlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XH5500UO76QnT6o3jKHOWPuGPDO+DzLhxw92qc95knk=;
        b=AscW9o5If5oIj99sPypqZhbRQ1GkjqNyuRMbQZa9v4aSTiQy0xWlhZpaPGfBolMr02
         +8G06rZjv1WU/eQ7zhwmRuuQwmMDTu0RGpy6uaHDVXZRrQIpFMOcXTrgNTCf0p5E9lsx
         CtBDzPIN5hSBlY0Jb4fEnNyFh/QQVI84jVEwlSvdzML6gGzHwEmsBEMVRJVRyVlNh9oa
         OXE2YyAhrQNeny+S6Jq2StZnqPmOITpoE8MR+yHnFOPqO6Fi7dZPca25SOT+eFUPN3/e
         PFkFrRD2qKsbtAs59ybUgU9skjH/Iiynsdn6FoCadJgZ41ZZoXFwXAdVFvFFBzLHeJ14
         Q0nw==
X-Gm-Message-State: AOAM533QtBC94l2r0/Exapwx71Pj8X5wFMf84suozDDAAlLFwSky3R36
        mOOiBKoABxSRF15HW3pcydw5sV9Q1ro=
X-Google-Smtp-Source: ABdhPJxuzlus42omKjp6jEy5oeQiSNDp3p2DEg8n4f3Du6ulNTUBC0GR9n2C4mP6eLQoiLSZ6Rnd5Q==
X-Received: by 2002:a17:907:94cf:: with SMTP id dn15mr3511443ejc.114.1600935333716;
        Thu, 24 Sep 2020 01:15:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id rl14sm1750694ejb.109.2020.09.24.01.15.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 01:15:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: man-pages.7: Simplify indentation of structure definitions, shell
 session logs, and so on
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
 <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3814ebff-9ce7-ca81-25a7-427d0d255342@gmail.com>
Date:   Thu, 24 Sep 2020 10:15:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 9/21/20 4:15 PM, G. Branden Robinson wrote:
> At 2020-09-21T09:49:11+0200, Michael Kerrisk (man-pages) wrote:
>> On Mon, 21 Sep 2020 at 09:32, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>> Indentation of structure definitions, shell session logs, and so on
>>>
>>> When  structure definitions, shell session logs, and so on are included
>>> in running text, indent them by 4 spaces (i.e.,  a  block  enclosed  by
>>> .in +4n and .in), format them using the .EX and EE macros, and surround
>>> them with suitable paragraph markers (either .PP or .IP).  For example:
>>>
>>>                 .PP
>>>                 .in +4n
>>>                 .EX
>>>                 int
>>>                 main(int argc, char *argv[])
>>>                 {
>>>                     return 0;
>>>                 }
>>>                 .EE
>>>                 .in
>>>                 .PP
>>>
>>>
>>> That could be simplified to the following, right?:
>>>
>>>                 .IP
>>>                 .EX
>>>                 int
>>>                 main(int argc, char *argv[])
>>>                 {
>>>                     return 0;
>>>                 }
>>>                 .EE
>>>                 .PP
>>>
>>> Or is there any difference?
>>
>> .IP indents by 8 spaces by default, I think.
> 
> 7 "ens" on nroff devices (like terminals), 7.2n on troff devices.

D'oh, yes. 7!

> An "en" is a traditional typesetting unit of measure, the width of a
> letter "n" in the font being used.  For monospaced fonts, including
> those used in character-cell terminals--barring the employment of CJK
> "fullwidth" code points--this is the same width as a space.
> 
>> Also, .IP won't indent further, if we are already in an area of
>> indented paragraphs.
> 
> This is true.  In my maintenance work on groff's man pages I have
> devised an idiom of calling .RS twice, putting in the desired material,
> and then calling .RE twice.
> 
> In membarrier(2), however, life is simple because no code examples are
> being nested inside an indented paragraph (.IP).  I'm attaching a patch;
> it produces no visible difference in output, not even white space
> changes.
> 
> I should add that my suggestion is to _not_ specify precise indentation
> amounts in man pages, as this is a presentation matter and readers may
> prefer tighter or more generous indentation, which they can control via
> the IN register; that is, passing -rIN to the groff command.  (Or, more
> likely, by configuring it in their man.local file so all pages that
> respect the user's wishes are consistent.)
> 
> I've been improving the groff_man(7) page over the past few years to
> document all of this stuff much better, and recently in groff git[1]
> I've split out a groff_man_style(7) page.  The latter is (as near as
> makes no difference) a strict superset of the former.
> 
> Michael's site has a fairly recent snapshot of these pages:
>   https://man7.org/linux/man-pages/man7/groff_man.7.html
>   https://man7.org/linux/man-pages/man7/groff_man_style.7.html
> 
> Feedback is welcome.  For the latter page, I still need to write my
> grand introduction where I explain the real typesetting basics: filling,
> adjusting, breaking, and how these all relate to hyphenation.
> 
> In my opinion, .in requests are never necessary in idiomatic,
> well-written man pages and I'm happy to offer technical advice for how
> to achieve the desired result without using them.

So, I don't disagree with you. (And as ever, thank you for your
detailed input.) The pattern I use above (with ".in +4n/.in" was a
hack that I cam up with to get code blocks with a "suitable"
indent. Your suggestion of ".RS 4/.RE" (in your patch, which I've
quoted inline below), does seem better. I'm not averse to changing
things. But, there is a related question. I use a similar hack in
the SYNOPSIS of many pages (e.g., chmod.2), to undent a single
line:

[[
.PP
.in -4n
Feature Test Macro Requirements for glibc (see
.BR feature_test_macros (7)):
.in
.PP
]]

Presumably, that could be replaced with ".RS -4/.RE", but is
there something even better?

Thanks,

Michael
> 
> I'm also happy to prepare patches for man-pages documents implementing
> my recommendations.  :)
> 
> Regards,
> Branden
> 
> [1] https://git.savannah.gnu.org/cgit/groff.git
> 

======

Use .RS/.RE man macros instead of .in requests.

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index f65c6be5c..526bb3819 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -60,11 +60,11 @@ The key idea is to replace, for these matching
 barriers, the fast-side memory barriers by simple compiler barriers,
 for example:
 .PP
-.in +4n
+.RS 4
 .EX
 asm volatile ("" : : : "memory")
 .EE
-.in
+.RE
 .PP
 and replace the slow-side memory barriers by calls to
 .BR membarrier ().
@@ -285,7 +285,7 @@ very frequently, and where "slow_path()" is executed infrequently, the
 following code (x86) can be transformed using
 .BR membarrier ():
 .PP
-.in +4n
+.RS
 .EX
 #include <stdlib.h>
 
@@ -332,13 +332,13 @@ main(int argc, char **argv)
     exit(EXIT_SUCCESS);
 }
 .EE
-.in
+.RE
 .PP
 The code above transformed to use
 .BR membarrier ()
 becomes:
 .PP
-.in +4n
+.RS
 .EX
 #define _GNU_SOURCE
 #include <stdlib.h>
@@ -421,4 +421,4 @@ main(int argc, char **argv)
     exit(EXIT_SUCCESS);
 }
 .EE
-.in
+.RE

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
