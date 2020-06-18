Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 750171FF4C2
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 16:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730547AbgFROcG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 10:32:06 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:36476 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726132AbgFROcF (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 18 Jun 2020 10:32:05 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 8518E20137;
        Thu, 18 Jun 2020 16:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1592490723;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=2dU9hl5cuf2PW8xVQltYCT9LxXcksOlhcARtkPm89Tc=;
        b=psQ0b0TIrRNxoV6YmiBUWMKh7naBS+3sKEaeLrhJwonGP5RBUeRYwFM/b7DFpVMMOHiMry
        UTL1oE187fY3WOvX1biQXZVvRnBs/VRYUUG3iFFCUFymUf3KQL3Ko/Px6IZFEoUOjxEZiS
        OwlZJKNQsxvXMwwn0jsFehgBGPcrTfTJ8SktNE/TewUEFEnj4NHo3HWWzcYS39ePr2kbKn
        l0IVRHFGGNKpJAi+yBV/B+fEb5FyU+S/ywxSA7zmxf9y8W0iuDkobhE203fpK/r/xbgsR1
        jmTzXnbw9otr1DKqVdFtfJa93wRCQuIcP/jnptkERc1Srr00RmZOqG5sUnpddg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Thu, 18 Jun
 2020 16:32:03 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Thu, 18 Jun 2020 16:32:03 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: [PATCH] fread.3: return value
Thread-Topic: [PATCH] fread.3: return value
Thread-Index: AQHWRX07DpfKkcxUak2+FCKjTXVnVg==
Date:   Thu, 18 Jun 2020 14:32:02 +0000
Message-ID: <726938c5daec4d5fbe7e85a121eff984@bfs.de>
References: <20200616182659.12365-1-arkadiusz@drabczyk.org>
 <20200616190017.5y3pwpb22w2jeqls@jwilk.net>
 <20200616225034.e4uzibuemo7lpmet@comp.lan>
 <3294b2a2fae14460984e2f3162f7ec35@bfs.de>
 <20200617173010.vekk35vrslmtdm6r@comp.lan>
 <4d901a75517246baa6a5f82f291c0595@bfs.de>,<20200618114344.rsgecwlvpmesfa7a@comp.lan>
In-Reply-To: <20200618114344.rsgecwlvpmesfa7a@comp.lan>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.00
Authentication-Results: mx02-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.00 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[];
         RCPT_COUNT_TWO(0.00)[2];
         NEURAL_HAM(-0.00)[-1.005];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.00)[44.80%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Arkadiusz Drabczyk [arkadiusz@drabczyk.org]
Gesendet: Donnerstag, 18. Juni 2020 13:43
An: Walter Harms
Cc: linux-man@vger.kernel.org
Betreff: Re: [PATCH] fread.3: Explain that file position is moved after cal=
ling fread()/fwrite()

On Thu, Jun 18, 2020 at 08:37:02AM +0000, Walter Harms wrote:
>> Isn't it already covered by this fragment:
>>
>> "If an error occurs, or the end of the file is reached, the return
>> value is a short item count (or zero)."
>>
>> IMHO no,
>> what does a "short item count" mean ?

>"items of data" refers to nmemb:

>"The function fread() reads nmemb items of data"

>so "item count" means number of size-long sequences of bytes and
>"short" means fewer than requested. But I think you know that well and
>you just think that "short item count" is not clear enough, right?

>(And of course I hope that I get it right.)

When reading that i try to "ignore" what i know and get the position of an =
first time reader,
so i noticed that this was fishy (i guess short item count is derived from =
short read)=20

>> E.g. my size is 4 bytes and there are 3 bytes left to read. what is
>> the return value?

>If the requested size is 4 but there are only 3 bytes left then
>fread() will return 0, no matter what's the value of nmemb because
>it's not able to read even a single item and feof() will return
>non-zero. I think that this is explained clearly enough in the
>manpage.

IMHO i would be more clear to drop that "short item count".=20
"If an error occurs, or the end of the file is reached, the  return value i=
s zero"

>> and will the last few bytes ever read ?

>That is interesting. POSIX
>https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/ says
>that "If a partial element is read, its value is unspecified.". But as
>fread() returns number of items it has successfully read the returned
>value should always be checked and it's different than requested nmemb
>it means an error and I guess there is no way to tell how many bytes
>have been partially read - for example if size =3D=3D 4 and nmemb =3D=3D 1=
 and
>returned value is 0 you don't know if fread() read 1, 2 or 3 bytes.

the GNU version fills the buffer with the remaining bytes but returns 0.


>Anyway, the patch that I sent explains that file pointer is moved
>after fread()/fwrite(). The discussion about return value should be
>started in a separate thread.

i have changed the subject.

--
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
