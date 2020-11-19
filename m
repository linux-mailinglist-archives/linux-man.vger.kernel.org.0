Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A84F2B9BA0
	for <lists+linux-man@lfdr.de>; Thu, 19 Nov 2020 20:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726944AbgKSTmQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Nov 2020 14:42:16 -0500
Received: from mout.gmx.net ([212.227.15.19]:39973 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726644AbgKSTmQ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 19 Nov 2020 14:42:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1605814934;
        bh=W22m1+3+tBfykccsHROEE89veuQt+1nRZYjj4QL9VSc=;
        h=X-UI-Sender-Class:To:From:Subject:Date;
        b=GrANA5SdbkRga3wDjf37KwupmrSGLjJG3FDZfb8AkWPivHGTxffj2uxxSHyFYLkwI
         U4D3KHqY7kWetiVGz6mJu9MakiUoi5dwh4TxmNPlRelo3uor80y+NfXgrYSU2F3aBN
         MnbBzqcm9MIV1EPFV3bH7Z41NEo6wpHMKeidg94Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.83] ([178.202.41.135]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MiJZE-1k0T7Q1bKo-00fU6r; Thu, 19
 Nov 2020 20:42:14 +0100
To:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: strnlen.3: never beyond s+maxlen
Message-ID: <66a3e04d-b70d-4c55-ea2c-37175753a2e7@gmx.de>
Date:   Thu, 19 Nov 2020 20:42:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:F19V2VLnWt56jfYQNAcv2v6TnT5ZAtU9STkFNo60yeFBbU8ZjW5
 liuXiHkyXzWlNUMz5rSwaPuP8pD75lskCjxVK2slZaPSeTvHVXvl8hXVYJIf5uYOWxVruYF
 aRtVwhizNRJhc6Iivtf85azYl0j3S6RpFSKJuFw598fK9XaXGbtULRvyDZRp5qZJrxqFUf/
 wFDWhizbbCswwHm96wpaA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CAOdo3KQCaw=:WBJ+VUR8p658GEig3L76kF
 rHGh5mzSUMf81sf8ii3vD0EUzZHsH9O1UwxY81tuluit+jckEzwgxQj3jMlhiQnGLw7Pi5gYo
 dZ3KS2b5rbw3+tCEgECKIgJx/l/8Ak3okpJihSLVCcH1Dm34AP/0g7TLAvk1JYMcEcyNXe9+6
 jrwOvE+V87W56vXwa09YI1xorGvWIMcDt/f8VAvFtcxIFjDgKgF90xppUynFsLku13+p5wozA
 /dat9qI1NLpLkQXByC9dowmD5AMHcOAWCSMFRGC4P9HRc8sWQKrPLDLuiYbCITuSpkirb44DK
 nTbffclnqHaogAs4DDUJ96wwOPVjYdBSQC6ides/L8fJn+QpLxb3xbf3+20HGdpECj/EnSsHz
 mxX+Hk7uzKCFMnThVlrtJvXZuhlX5nyMz/i2LdAilmBTKrxZOVSeQSjFD5kvzQpbPLA9Ej5BP
 2vV0uG6EkRRv25Rruirz8SWDdiSWM0Pihai3v2l923OoEJk2Pxhj1juYXb9ITECcZmKPScihW
 zWY8c1ukgbYX7B5Hwwekf3geVDcQxNMmBlf1mv5vocD99B9MGQCzpqV7SmhX4fqq+FwpsxKa5
 SFOpNiaNlCU/ZowTLikvk2t11S/zgV8jNfjC6OlJspb2lhICpVULXxMDxneeQKzV8229+FP/K
 nDBmoVVbvMT+JvBdI8t+bWt/pDJZBUUEki2x4COhKebKcjRvikGRvLUTExCTZ4J37ck2AFSCS
 L0pN2qQULNNIWOiDSvjn90V23mBrukftarc8335Ht0L6kWCUI9V4sqwfUQbJQR8VS+ovhUE5b
 N3EMSwtuu0Ne/w+A7wa6HigP/8kkVi20OoBLm23Qj5/8ctrbgialT42W/DswHqQmTGB+8pbGc
 yokqsJiraH17Vducbscg==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

the strnlen.3 manpage has the following sentence:

"In doing this, strnlen() looks only at the first maxlen characters in
the string pointed to by s and never beyond s+maxlen."

This sentence is self-contradictory:

The last visited character implied by "first maxlen characters" is
s[maxlen-1].

Given that "beyond a" does not include "a", the last visited character
implied by "never beyond s+maxlen" is s[maxlen].

A consistent sentence would be

"In doing this, strnlen() looks only at the first maxlen characters in
the string pointed to by s and never beyond s+maxlen-1."

I would prefer

"In doing this, strnlen() looks only at the first maxlen characters in
the string pointed to by s and never beyond s[maxlen-1]"

Best regards

Heinrich

