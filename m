Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8453C22D0
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 13:27:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230180AbhGIL3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 07:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230091AbhGIL3t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 07:29:49 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 092A0C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 04:27:05 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id k4so5406790wrc.8
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 04:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wslO+G0B/L2zYpsNC69zO04WlLthwUo6ulOkg+uNTNE=;
        b=LYdx//pbkn7z55ycTRgulvpa5mreyY14VS92bcq31of+EL2b6n1S4BZ4x6iibuBVLm
         Kbh5IBcGGWHw/vABic4t6/GiEdSUA5dM/P1qNvZaN2SwDk43JPZcaXZ5Yz7Z/eB2R8CI
         3wfY75pqIMAkJ/f6hW53LLxIWdyQIs5twHeAaJwTCjOVgCJ5ncOCF9+VbWQNRAJGYCyP
         iHX0bP165O3/nh4LS4TpqsJ+5JupjPxDra3YdYjFM/bcVptYjq6kDSVAdJzq+Rp/ItNU
         s36vdD8NP4ZyfjzcSQCd1RIOQ6erpx8HR7jIjTU9kP707mnUBfeeSCP5UbSg7NV96Ts6
         d5xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wslO+G0B/L2zYpsNC69zO04WlLthwUo6ulOkg+uNTNE=;
        b=ai96jcO38m4+kZ423phNtO26aXjyO6LcmZcuKLeyGdDSnAe8Sbc9lv0zaSoff0x3Xn
         7N2TKFMtZxIygB4eYePO9jrmrs5pnFqiZkklh1an4qoXHIy4WXyCmpN7kQxS3nNPgoqL
         zzY6cSLUZoYkAAbRLCdKTzSMlrfbOIl4S6oFBUG8+LRL/0coVmi2Nkt4iV7u1OL9zwXe
         CQhkzic1MBhS60ZsUasxEMpDMIqB0uWP7CK7X5oefY8bf8jG7Sq9d0l0/b/IFvC5QgP3
         t5ncilctC5qZZ5WBaVDIUkEzDN7LcgpB2j/x8w1mOr9Lemlrw4yfr45FylHtareCVi77
         xrDA==
X-Gm-Message-State: AOAM532c6xK1QH/4w6OHcQJDcJtXLwVAJl8/nkoWT8o6cFUwhZ7eT/wr
        vawKBszMehaYIBCBIU/Qhkc67QzSOsQ=
X-Google-Smtp-Source: ABdhPJwz7xuZm5xaYG/e8Rcp66PQkhMxSvLhdGAP+U6H+Ce00Dsklk4AJW40yx0ylQq4EM8hyDeurA==
X-Received: by 2002:a5d:6c65:: with SMTP id r5mr41793193wrz.395.1625830023608;
        Fri, 09 Jul 2021 04:27:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s17sm4849055wrt.58.2021.07.09.04.27.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 04:27:02 -0700 (PDT)
Subject: Re: strlen
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>, gcc-help@gcc.gnu.org,
        Segher Boessenkool <segher@kernel.crashing.org>,
        Xi Ruoyao <xry111@mengyan1223.wang>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
 <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
 <9d1681ef-1d97-2d08-9abe-dc63d817ca8a@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0ea47fb3-9acc-3517-9593-debcdbce2dd4@gmail.com>
Date:   Fri, 9 Jul 2021 13:27:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <9d1681ef-1d97-2d08-9abe-dc63d817ca8a@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On 7/9/21 12:50 PM, Jonny Grant wrote:
> 
> 
> On 08/07/2021 12:06, Alejandro Colomar (man-pages) wrote:
>> On 7/8/21 12:07 PM, Jonny Grant wrote:
>>> Thank you for your reply.
>>>
>>> We can't guarantee safestrlen() won't be called with NULL. So because strlen() itself doesn't check for NULL in C standard we'd need to call the wrapper so that NULL can be checked for.
>>>
>>> I'd like to avoid the compiler removing certain execution paths.
>>> I'd rather keep all code paths, even if they are not taken, just in case a NULL pointer creeps in due to an external device that is connected to an embedded system.
>>>
>>>
>>> Probably this would work:
>>>
>>> size_t __attribute__((optimize("O0"))) safestrlen(const char * s)
>>> {
>>>      if (NULL == s) return 0;
>>>      else return strlen(s);
>>> }
>>
>> I don't think you don't need that.  Unless there's a bug in GCC, it shouldn't optimize that path unless it is 100% sure that it will never be called.
> 
> That is good, so the code will always be kept! As compiler will never find all calls to strlen() and be sure those calls are never NULL.

Not always.  If you inline that function, that path may be removed in
some calls, if the compiler knows better than you that it can.  My point
is that you shouldn't care; your code is completely legal, and whatever
the compiler decides to do will also be legal (no undefined behavior,
and no crashes).  If it optimizes, it will be a good thing that you
shouldn't prevent.

If the compiler does otherwise, that's a bug in the compiler, and
something you can't solve by writing different code or preventing
optimizations, or at least there's no guarantee about it, since it's a
bug.  But I don't believe you'll find a bug in this case.  So please,
trust the compiler, at least when using perfectly defined behavior.  And
if you don't trust the compiler, which is perfectly reasonable, test it,
but don't try to workaround bugs that don't exist.

> 
>> Moreover, I recommend you to optimize as much as possible.
>> Even though NULL is possible in your code, I guess it's unlikely.
>>
>> Also, calling a function safe is too generic.
>> I'd call it with the suffix null, as it act different on null.
>>
>> Also, I recommend avoiding 'size_t' (and any other unsigned types, BTW).
>> See <https://google.github.io/styleguide/cppguide.html#Integer_Types>.
>> Use the POSIX type 'ssize_t'.
>> That also allows differentiating a length of 0 (i.e., "") from an invalid string (i.e., NULL), by returning -1 for NULL.
>>
> 
> https://man7.org/linux/man-pages/man3/strlen.3.html
> size_t strlen(const char *s);
> 
> I'd rather not change the return type from POSIX size_t in any wrapper of strlen. Unless it is part of C11 Annex K style standards improvement.

That's a historical accident.

A long time ago (much before I was born, and much before the first
standard, I mean in the early times of K&R C and Unix), unsigned types
were used more than they should, and the first C standards (I mean
ANSI/ISO standards (i.e., C89, C99, ...), not POSIX), with a lot of
already existing code, didn't attempt to change the language, but to
annotate common usage.

In POSIX.1 there's a mix, because POSIX has the type 'ssize_t', which is
not defined by the C standards.  POSIX in general tends to use the
signed type 'ssize_t' for its POSIX-only functions (i.e., not in the C
standards).

Annex K has been an attempt of Microsoft to provide safer functions, but
while there are some functions there that have good intentions, most of
them are just badly designed.  That annex K is DOA, and will probably be
marked as deprecated in C22 (currently C2x).

I think that a standard should not try to design new functions, and
instead just annotate common usage, as they did in the first ones.
Problems like the ones Annex K suffers could have been detected early if
they had been implemented as an extension to some compiler(s) decade(s)
before being standardized.  Therefore, if the implementation passes the
test of time, you standardize it, else not, IMO.  Otherwise, we have a
standard that is declared deprecated in the next version of the
standard, similar to what is happening with the C++ standards (which,
guess what, BTW I recently read that they are undeprecating a lot of C
stuff they deprecated in the first standards).

Using unsigned for anything else than bitfileds and similar stuff is
just *wrong*, as you can read from the Google C++ style guide I linked
before.
Another source you can read is this paper from Bjarne Stroustrup:
<http://open-std.org/JTC1/SC22/WG21/docs/papers/2019/p1428r0.pdf>
This is one of the few cases where I agree with something coming from
him.  I hope some day we get a ssizeof operator :-)


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
