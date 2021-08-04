Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BDE73DFC3E
	for <lists+linux-man@lfdr.de>; Wed,  4 Aug 2021 09:43:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235899AbhHDHn0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 03:43:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235809AbhHDHnY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Aug 2021 03:43:24 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F80CC0613D5
        for <linux-man@vger.kernel.org>; Wed,  4 Aug 2021 00:43:11 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id i10-20020a05600c354ab029025a0f317abfso3246327wmq.3
        for <linux-man@vger.kernel.org>; Wed, 04 Aug 2021 00:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=W20/8AL/SjlCSm7McNUv65kiPekK/N/2UNDpPMWGoAs=;
        b=CUVR6ugPFTF/FGqFbqDjvPmI81AY72xwYPKYdDVWSlPiS5TOSdjg/sWDcR1TFek/zP
         ce5/xWA6r160w2NK/7NbTFuUDdvkjwgUVJAOUKSaJlC+LmMjK2SVBrgpOsAMHnjkVQ4g
         HNnjfo6ucLym4ZOzTkzK773DvRzvOVggAkcwHDLB1oUAcE1T4rAM9RgXwDRtySR+olar
         SCScPSsdi4Dn45ndnjZtR1p6s4AJdcm9GW+dILTQyTGUVINWrIh7EbZYy4iLpBcoxzQz
         ewzdKSQo7ifs7x5y+b3e68igbIKfqLtfdiMcNV/RGt1x8o2nTdtx/dse1tMDf1EcqvsH
         BmQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W20/8AL/SjlCSm7McNUv65kiPekK/N/2UNDpPMWGoAs=;
        b=e5UU7SS/vzopJIMvK29+A5czu/1BxHdiZwFGIEn89ckpLkhaC7JvPeBeHiWWqyEJuk
         VkL2tdsSrxv4LrueSVavYJvUW9KRgH5rrNUlvhFxt81oIICeMljjtRlpIruNzl1hwD/P
         MzMlkzCx5IVgGy5R474NfULTLWNOivFOyaRO39LxuF4znj8JM6tx3/fIlaXMoBtjPTBt
         lG+9gzdhhhOKMJrE/7um3XBX/LDNy9bhp7qHZxWvEP4tPHAhGPMuNUUn093JpzSmTRfF
         b9P6FavuoQeToIs19zo9BYDH75a01v8UXEbEERIylVtMhld4pCY/gOzVVCq4ljnHO/Tf
         eYKw==
X-Gm-Message-State: AOAM531hGVR+lBD2kGrQNJTgsDMQS3RgS+2quaiR9f7dPLFDhuUiGDKA
        xuaUOpxi+I0q4heMdCij95tHYooQwzc=
X-Google-Smtp-Source: ABdhPJxCrR+zjLAlxaJHMEpTL9Wg+DkyUkeGl+HZ8h+Rqbh0nSx/rtXNu840KSGiDrYuDWNTc6bhCA==
X-Received: by 2002:a7b:cb99:: with SMTP id m25mr8074690wmi.90.1628062989841;
        Wed, 04 Aug 2021 00:43:09 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id r129sm1383723wmr.7.2021.08.04.00.43.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 00:43:09 -0700 (PDT)
Subject: Re: [patch] nscd.conf.5: describe reloading, clarifications
To:     Greg Banks <gbanks@linkedin.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        Petr Baudis <pasky@suse.cz>, DJ Delorie <dj@redhat.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
 <BL0PR2101MB1316FA480EE808D34FA523EEA1F09@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <02da5334-1635-8aa9-c4e6-deb0161a848d@gmail.com>
 <BL0PR2101MB13161815183CB7E6F5D8E61EA1F09@BL0PR2101MB1316.namprd21.prod.outlook.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d2de0e56-8feb-24dc-fc92-ebdc3647bee5@gmail.com>
Date:   Wed, 4 Aug 2021 09:43:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <BL0PR2101MB13161815183CB7E6F5D8E61EA1F09@BL0PR2101MB1316.namprd21.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Greg,

On 8/3/21 4:17 PM, Greg Banks wrote:
> Hi Alejandro,
> 
> I think you're a victim of the git bug described in 
> https://bugzilla.redhat.com/show_bug.cgi?id=1469098 
> <https://bugzilla.redhat.com/show_bug.cgi?id=1469098>  where git gets 
> confused about whitespace when decoding base64 encoded message bodies.  
> The workarounds are to use "git am --ignore-whitespace", or to manually 
> decode the base64 and adjust the MIME headers. I don't know of any way 
> to control the transfer encoding from this mail client, sorry.  FYI my 
> mail client has also "helpfully" stuck an annoying but harmless Unicode 
> U+200B ZERO WIDTH SPACE character at the start of the message.

Thanks for that info, it worked.

But, it has CRLF (Windows) endings, and v2 didn't reach the mailing list 
(but v1 did).  And v1 didn't have CRLF endings.  Could you please use 
the same method you used for sending v1 to send an v3?
Also, please see some comments below.

Thanks,

Alex

> 
> Greg.
> ------------------------------------------------------------------------
> *From:* Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
> *Sent:* Tuesday, August 3, 2021 04:08
> *To:* Greg Banks <gbanks@linkedin.com>
> *Cc:* Michael Kerrisk <mtk.manpages@gmail.com>; 
> libc-alpha@sourceware.org <libc-alpha@sourceware.org>; Petr Baudis 
> <pasky@suse.cz>; DJ Delorie <dj@redhat.com>; linux-man@vger.kernel.org 
> <linux-man@vger.kernel.org>
> *Subject:* Re: [patch] nscd.conf.5: describe reloading, clarifications
> On 8/3/21 2:19 AM, Greg Banks wrote:
>> ​Thanks Alejandro,
>> 
>> Here's v2 of the patch with your feedback applied.
> 
> 
> Hi Greg,
> 
> Sorry, but the patch does not apply (see below).
> Could you please fix it?
> 
> Thanks,
> 
> Alex
> 
> $ git am patches/recv/Re\:\ \[patch\]\ nscd.conf.5\:\ describe\
> reloading\,\ clarifications.eml
> warning: quoted CRLF detected
> warning: quoted CRLF detected
> Applying: nscd.conf.5: describe reloading, clarifications
> error: patch failed: man5/nscd.conf.5:1
> error: man5/nscd.conf.5: patch does not apply
> Patch failed at 0001 nscd.conf.5: describe reloading, clarifications
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> 
> 
>> 
>> 
>> 
>> - Added a subsection of NOTES describing nscd's reloading behavior
>>    and providing advice on how to configure it.
>> - Clarifications for the threads, reload-count, positive-time-to-live,
>>    check-files, and shared attributes.
>> 
>> Derived by reading the nscd, libresolv and glibc source and some painful 
>> experience.
>> 
>> v2: review feedback
>> 
>> diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
>> index 7356bf7c2..a5c5e7bc3 100644
>> --- a/man5/nscd.conf.5
>> +++ b/man5/nscd.conf.5
>> @@ -1,5 +1,6 @@
>>   .\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany
>>   .\" Author: Thorsten Kukuk <kukuk@suse.de>
>> +.\" Updates by Greg Banks <gbanks@linkedin.com> Copyright (c) 2021 
>> Microsoft Corp.
>>   .\"
>>   .\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
>>   .\" This program is free software; you can redistribute it and/or
>> @@ -53,9 +54,12 @@ The default is 0.
>>   .B threads
>>   .I number
>>   .RS
>> -This is the number of threads that are started to wait for
>> +This is the initial number of threads that are started to wait for
>>   requests.
>>   At least five threads will always be created.
>> +The number of threads may increase dynamically up to
>> +.B max\-threads
>> +in response to demand from clients, but never decreases.
>>   .RE
>>   .PP
>>   .B max\-threads
>> @@ -83,9 +87,18 @@ Specifies the user who is allowed to request statistics.
>>   unlimited |
>>   .I number
>>   .RS
>> -Limit on the number of times a cached entry gets reloaded without being 
>> used
>> +Sets a limit on the number of times a cached entry gets reloaded 
>> without being used
>>   before it gets removed.
>> -The default is 5.
>> +The limit can take values ranging from 0 to 254;
>> +values 255 or higher behave the same as
>> +.BR unlimited .
>> +Limit values can be specified in either decimal or hexadecimal with a 
>> "0x" prefix.
>> +The special value
>> +.B unlimited
>> +is case-insensitive.
>> +The default limit is 5.
>> +A limit of 0 turns off the reloading feature.
>> +See NOTES below for further discussion of reloading.
>>   .RE
>>   .PP
>>   .B paranoia
>> @@ -128,6 +141,9 @@ in the specified cache for
>>   is in seconds.
>>   Larger values increase cache hit rates and reduce mean
>>   response times, but increase problems with cache coherence.
>> +Note that for some name services (including specifically DNS)
>> +the TTL returned from the name service is used and this attribute

Break just before (or after) "and" instead.

>> +is ignored.
>>   .RE
>>   .PP
>>   .B negative\-time\-to\-live
>> @@ -166,6 +182,7 @@ The files are
>>   .IR /etc/passwd ,
>>   .IR /etc/group ,
>>   .IR /etc/hosts ,
>> +.IR /etc/resolv.conf ,
>>   .IR /etc/services ,
>>   and
>>   .IR /etc/netgroup .
>> @@ -194,6 +211,8 @@ is shared with the clients so
>>   that they can directly search in them instead of having to ask the
>>   daemon over the socket each time a lookup is performed.
>>   The default is no.
>> +Note that a cache miss will still result in asking the daemon over

Break just after "in"

>> +the socket.
>>   .RE
>>   .PP
>>   .B max\-db\-size
>> @@ -230,12 +249,88 @@ and
>>   .IR group .
>>   .RE
>>   .SH NOTES
>> +.PP

That's not correct.  Did you copy that from another place?  If so, 
please tell me because I should fix it.

We use that between paragraphs, but not before the first one nor after 
the last one.

>>   The default values stated in this manual page originate
>>   from the source code of
>>   .BR nscd (8)
>>   and are used if not overridden in the configuration file.
>>   The default values used in the configuration file of
>>   your distribution might differ.
>> +.SS Reloading
>> +.PP

Nope.  Same reasons.

>> +.BR nscd (8)
>> +has a feature called reloading whose behavior can be surprising.
>> +.PP
>> +Reloading is enabled when the
>> +.B reload-count
>> +attribute has a non-zero value.
>> +The default value in the source code enables reloading, although your 

Break at the ',' instead.

>> distribution may differ.
>> +.PP
>> +When reloading is enabled, positive cached entries (the results of

idem.

>> +successful queries) do not simply expire when their TTL is up.

Break after ')'.

>> +Instead, at the expiry time
>> +.B nscd
>> +will "reload", i.e. re-issue the same name service query that created 
>> the cached
>> +entry, to get a new value to cache.

Break at the commas above.

>> +Depending on
>> +.I /etc/nsswitch.conf
>> +this may mean that a DNS, LDAP or NIS request is made.

Use a comma before "or" (Oxford comma).

>> +If the new query is successful reloading will repeat when the new value 

s/successful/successful,/

>> would expire, until

Break at the ',' instead.

>> +.B reload-count
>> +reloads have happened for the entry, and only then will it actually be 

idem.

>> removed
>> +from the cache.
>> +A request from a client which hits the entry will reset the reload 
>> counter on the entry.
>> +Purging the cache using
>> +.I nscd\ -i

Please, use \~ instead of "\ ".  (I know man-pages(7) recommends "\ ", 
but we're about to change that).

>> +overrides the reload logic and removes the entry.
>> +.PP
>> +Reloading has the effect of extending cache entry TTLs without compromising
>> +on cache coherency, at the cost of additional load on the backing name 
>> service.

In general, break at commas instead of random places.
The following regex should rarely match:

[,;:.] \+\w

>> +Whether this is a good idea on your system depends on details of
>> +your applications' behavior, your name service, and the effective TTL 
>> values of
>> +your cache entries.
>> +(Note that for some name services (for example, DNS), the
>> +effective TTL is the value returned from the name service and
>> +.I not
>> +the value of the
>> +.B positive\-time\-to\-live



>> +attribute.)
>> +Please consider the following advice carefully:
>> +.IP \(bu
>> +If your application will make a second request for the same name,
>> +after more then 1 TTL but before
>> +.B reload\-count
>> +TTLs,
>> +and is sensitive to the latency of a cache miss,
>> +then reloading may be a good idea for you.
>> +.IP \(bu
>> +If your name service is configured to return very short TTLs,
>> +and your applications only make requests rarely under normal circumstances,
>> +then reloading may result in additional load on your backing name service
>> +without any benefit to applications,
>> +which is probably a bad idea for you.
>> +.IP \(bu
>> +If your name service capacity is limited,
>> +reloading may have the surprising effect of increasing load on your name
>> +service instead of reducing it,
>> +and may be a bad idea for you.
>> +.IP \(bu
>> +Setting
>> +.B reload\-count
>> +to
>> +.B unlimited
>> +is almost never a good idea,
>> +as it will result in a cache that never expires entries and puts 
>> never-ending
>> +additional load on the backing name service.
>> +.PP
>> +Some distributions have an init script for
>> +.BR nscd (8)
>> +with a
>> +.I reload
>> +command which uses
>> +.I nscd\ -i

\~

>> +to purge the cache.
>> +That use of the word "reload" is entirely different from the 
>> "reloading" described here.
>>   .SH SEE ALSO
>>   .BR nscd (8)
>>   .\" .SH AUTHOR
>> 
>> ------------------------------------------------------------------------
>> *From:* Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
>> *Sent:* Wednesday, July 28, 2021 16:31
>> *To:* Greg Banks <gbanks@linkedin.com>
>> *Cc:* Michael Kerrisk <mtk.manpages@gmail.com>; 
>> libc-alpha@sourceware.org <libc-alpha@sourceware.org>; Petr Baudis 
>> <pasky@suse.cz>; DJ Delorie <dj@redhat.com>; linux-man@vger.kernel.org 
>> <linux-man@vger.kernel.org>
>> *Subject:* Re: [patch] nscd.conf.5: describe reloading, clarifications
>> Hello Greg,
>> 
>> On 7/28/21 12:09 AM, Greg Banks wrote:
>>> - Added a subsection of NOTES describing nscd's reloading behavior
>>>    and providing advice on how to configure it.
>>> - Clarifications for the threads, reload-count, positive-time-to-live,
>>>    check-files, and shared attributes.
>>> 
>>> Derived by reading the nscd, libresolv and glibc source and some painful experience.
>> 
>> Thanks for the patch.
>> 
>> Please see some comments below.
>> 
>> Thanks,
>> 
>> Alex
>> 
>>> 
>>> diff --git a/man5/nscd.conf.5 b/man5/nscd.conf.5
>>> index 7356bf7c2..52f7051d5 100644
>>> --- a/man5/nscd.conf.5
>>> +++ b/man5/nscd.conf.5
>>> @@ -1,5 +1,6 @@
>>>   .\" Copyright (c) 1999, 2000 SuSE GmbH Nuernberg, Germany
>>>   .\" Author: Thorsten Kukuk <kukuk@suse.de>
>>> +.\" Updates by Greg Banks <gbanks@linkedin.com> Copyright (c) 2021 Microsoft Corp.
>>>   .\"
>>>   .\" %%%LICENSE_START(GPLv2+_SW_3_PARA)
>>>   .\" This program is free software; you can redistribute it and/or
>>> @@ -53,9 +54,12 @@ The default is 0.
>>>   .B threads
>>>   .I number
>>>   .RS
>>> -This is the number of threads that are started to wait for
>>> +This is the initial number of threads that are started to wait for
>>>   requests.
>>> -At least five threads will always be created.
>>> +At least five threads will always be created.  The number of threads
>>> +may increase dynamically up to
>>> +.B max\-threads
>>> +in response to demand from clients, but never decreases.
>>>   .RE
>>>   .PP
>>>   .B max\-threads
>>> @@ -83,9 +87,15 @@ Specifies the user who is allowed to request statistics.
>>>   unlimited |
>>>   .I number
>>>   .RS
>>> -Limit on the number of times a cached entry gets reloaded without being used
>>> -before it gets removed.
>>> -The default is 5.
>>> +Sets a limit on the number of times a cached entry gets reloaded without being used
>> 
>> 
>> See the following extract from man-pages(7):
>> 
>> $ man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p';
>>      Use semantic newlines
>>          In the source of a manual page,  new  sentences  should  be
>>          started  on new lines, and long sentences should split into
>>          lines at clause breaks (commas, semicolons, colons, and  so
>>          on).   This  convention,  sometimes known as "semantic new‐
>>          lines", makes it easier to see the effect of patches, which
>>          often  operate at the level of individual sentences or sen‐
>>          tence clauses.
>> 
>>> +before it gets removed.  The limit can take values ranging from 0
>>> +to 254; values 255 or higher behave the same as
>>> +.BR unlimited .
>>> +Limit values can be specified in either decimal or hexadecimal with a
>>> +"0x" prefix.  The special value
>>> +.B unlimited
>>> +is case-insensitive.  The default limit is 5.  A limit of 0 turns off the reloading
>>> +feature.  See NOTES below for further discussion of reloading.
>>>   .RE
>>>   .PP
>>>   .B paranoia
>>> @@ -128,6 +138,9 @@ in the specified cache for
>>>   is in seconds.
>>>   Larger values increase cache hit rates and reduce mean
>>>   response times, but increase problems with cache coherence.
>>> +Note that for some name services (including specifically DNS)
>>> +the TTL returned from the name service is used and this attribute
>>> +is ignored.
>>>   .RE
>>>   .PP
>>>   .B negative\-time\-to\-live
>>> @@ -166,6 +179,7 @@ The files are
>>>   .IR /etc/passwd ,
>>>   .IR /etc/group ,
>>>   .IR /etc/hosts ,
>>> +.IR /etc/resolv.conf ,
>>>   .IR /etc/services ,
>>>   and
>>>   .IR /etc/netgroup .
>>> @@ -194,6 +208,8 @@ is shared with the clients so
>>>   that they can directly search in them instead of having to ask the
>>>   daemon over the socket each time a lookup is performed.
>>>   The default is no.
>>> +Note that a cache miss will still result in asking the daemon over
>>> +the socket.
>>>   .RE
>>>   .PP
>>>   .B max\-db\-size
>>> @@ -230,12 +246,82 @@ and
>>>   .IR group .
>>>   .RE
>>>   .SH NOTES
>>> +.PP
>>>   The default values stated in this manual page originate
>>>   from the source code of
>>>   .BR nscd (8)
>>>   and are used if not overridden in the configuration file.
>>>   The default values used in the configuration file of
>>>   your distribution might differ.
>>> +.SS Reloading
>>> +.PP
>>> +.BR nscd (8)
>>> +has a feature called reloading whose behavior can be surprising.
>>> +.PP
>>> +Reloading is enabled when the
>>> +.B reload-count
>>> +attribute has a non-zero value.  The default value in the source
>>> +code enables reloading, although your distribution may differ.
>>> +.PP
>>> +When
>>> +reloading is enabled, positive cached entries (the results of
>>> +successful queries) do not simply expire when their TTL is up.  Instead,
>>> +at the expiry time
>>> +.B nscd
>>> +will "reload", i.e. re-issue the same name service query that created the cached
>>> +entry, to get a new value to cache.  Depending on
>>> +.B /etc/nsswitch.conf
>> 
>> Also from man-pages(7):
>> 
>>      Formatting conventions (general)
>> [...]
>> 
>>          Filenames  (whether  pathnames,  or  references  to  header
>>          files) are always in italics (e.g., <stdio.h>),  except  in
>>          the  SYNOPSIS  section,  where  included  files are in bold
>>          (e.g., #include <stdio.h>).  When referring to  a  standard
>>          header  file include, specify the header file surrounded by
>>          angle brackets, in the usual C way (e.g., <stdio.h>).
>> 
>> 
>>> +this may mean that a DNS, LDAP or NIS request is made.  If the new query
>>> +is successful reloading will repeat
>>> +when the new value would expire, until
>>> +.B reload-count
>>> +reloads have happened for the entry, and only then will it actually be removed
>>> +from the cache.  A request from a client which hits the entry will reset
>>> +the reload counter on the entry.  Purging the cache using the
>>> +.B \-i
>> 
>> Also from man-pages(7):
>> 
>>          Complete commands should, if long, be  written  as  an  in‐
>>          dented  line on their own, with a blank line before and af‐
>>          ter the command, for example
>> 
>>              man 7 man-pages
>> 
>>          If the command is short, then it can be included inline  in
>>          the  text,  in italic format, for example, man 7 man‐pages.
>>          In this case, it may  be  worth  using  nonbreaking  spaces
>>          ("\ ")  at suitable places in the command.  Command options
>>          should be written in italics (e.g., -l).
>> 
>> 
>>> +command line option overrides the reload logic and removes the entry.
>>> +.PP
>>> +Reloading has the effect of extending cache entry TTLs without compromising
>>> +on cache coherency, at the cost of additional load on the backing name service.
>>> +Whether this is a good idea on your system depends on details of
>>> +your applications' behavior, your name service, and the effective TTL values of
>>> +your cache entries.  (Note that for some name services (for example, DNS), the
>>> +effective TTL is the value returned from the name service and
>>> +.I not
>>> +the value of the
>>> +.B positive\-time\-to\-live
>>> +attribute.)  Please consider the following advice carefully:
>>> +.IP \(bu
>>> +If your application will make a second request for the same name, after
>>> +more then 1 TTL but before
>>> +.B reload\-count
>>> +TTLs, and is sensitive to the latency of a cache miss, then reloading may be
>>> +a good idea for you.
>>> +.IP \(bu
>>> +If your name service is configured to return very short TTLs, and your
>>> +applications only make requests rarely under normal circumstances, then
>>> +reloading may result in additional load on your backing name service
>>> +without any benefit to applications, which is probably a bad idea for you.
>>> +.IP \(bu
>>> +If your name service capacity is limited, reloading may have the
>>> +surprising effect of increasing load on your name service instead of
>>> +reducing it, and may be a bad idea for you.
>>> +.IP \(bu
>>> +Setting
>>> +.B reload\-count
>>> +to
>>> +.B unlimited
>>> +is almost never a good idea, as it will result in a cache that never expires
>>> +entries and puts never-ending additional load on the backing name service.
>>> +.PP
>>> +Note also that some distributions have an init script for nscd with a "reload"
>>> +command which has the effect of purging
>>> +.BR nscd 's
>>> +caches using the
>>> +.B \-i
>>> +commandline option.  That use of the word "reload" is
>>> +.I entirely different
>>> +from the "reloading" described here.
>>>   .SH SEE ALSO
>>>   .BR nscd (8)
>>>   .\" .SH AUTHOR
>>> 
>> 
>> 
>> -- 
>> Alejandro Colomar
>> Linux man-pages comaintainer; 
>> https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.kernel.org%2Fdoc%2Fman-pages%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=E1e7YGUZhDDpr8av9wG1WPa%2B33YOe64%2F7%2BZdfMmRUoM%3D&amp;reserved=0 
> <https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.kernel.org%2Fdoc%2Fman-pages%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=E1e7YGUZhDDpr8av9wG1WPa%2B33YOe64%2F7%2BZdfMmRUoM%3D&amp;reserved=0> 
> 
>> <https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.kernel.org%2Fdoc%2Fman-pages%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=E1e7YGUZhDDpr8av9wG1WPa%2B33YOe64%2F7%2BZdfMmRUoM%3D&amp;reserved=0 
> <https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.kernel.org%2Fdoc%2Fman-pages%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=E1e7YGUZhDDpr8av9wG1WPa%2B33YOe64%2F7%2BZdfMmRUoM%3D&amp;reserved=0>>
>> https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.alejandro-colomar.es%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=jznPum1MSudWgDiUuW9DJnI%2BiOi6dKwGpAG9PR8phKc%3D&amp;reserved=0 
> <https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.alejandro-colomar.es%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=jznPum1MSudWgDiUuW9DJnI%2BiOi6dKwGpAG9PR8phKc%3D&amp;reserved=0> 
> 
>> <https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.alejandro-colomar.es%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=jznPum1MSudWgDiUuW9DJnI%2BiOi6dKwGpAG9PR8phKc%3D&amp;reserved=0 
> <https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.alejandro-colomar.es%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=jznPum1MSudWgDiUuW9DJnI%2BiOi6dKwGpAG9PR8phKc%3D&amp;reserved=0>>
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; 
> https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.kernel.org%2Fdoc%2Fman-pages%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=E1e7YGUZhDDpr8av9wG1WPa%2B33YOe64%2F7%2BZdfMmRUoM%3D&amp;reserved=0 
> <https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.kernel.org%2Fdoc%2Fman-pages%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=E1e7YGUZhDDpr8av9wG1WPa%2B33YOe64%2F7%2BZdfMmRUoM%3D&amp;reserved=0>
> https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.alejandro-colomar.es%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=jznPum1MSudWgDiUuW9DJnI%2BiOi6dKwGpAG9PR8phKc%3D&amp;reserved=0 
> <https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.alejandro-colomar.es%2F&amp;data=04%7C01%7Cgbanks%40linkedin.com%7C2e234f99d76a404167c408d95655f1d7%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637635750019288026%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=jznPum1MSudWgDiUuW9DJnI%2BiOi6dKwGpAG9PR8phKc%3D&amp;reserved=0>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
