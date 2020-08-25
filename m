Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13CC625159C
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 11:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729499AbgHYJkb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 05:40:31 -0400
Received: from sonic313-13.consmr.mail.bf2.yahoo.com ([74.6.133.123]:40180
        "EHLO sonic313-13.consmr.mail.bf2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729462AbgHYJka (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 05:40:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1598348429; bh=ZYZvy+Qaw/dXt8bYbJ9dbPZBZLLQyQWYsj5yGRQem/A=; h=Date:From:Reply-To:Subject:References:From:Subject; b=DPY3MDHa6EKh0SEY59aUXalvR+HdEEYGe+R814tqNjNaIBd1by9Cawv3FbYmNrohs848cIU1tsMlpBNLUxf9K8DkLIBaEaarS9pHxpVntuejbC+6XEinTBeTDaBa35r8LJMV5I5Xr912KTykVuXNh1/S119uVCyWPW2EckHdBOuyzmPFQ8u2H+xl4Nqlr1+ULWg9UE7yoVDPpXoCLJVdFZlSHIpHfDlKsxzS43fINoUM2jayrrOlFWmhd8lmHggxUQ6JhyYDWeehcWB/TWkbJ/DOW23v8SQW+5uyzMqOs8w2Y+9X3MC9EUvFzymxIpRPyzmYa0zEsBHO5JFwRdYKOA==
X-YMail-OSG: e2V.VpIVM1mzFxGiyWvjwbXvi2a6bU6H8mmK7ovYl7DIMLYcm4FhCViznavfkIs
 A.rs6E2AYNVST5wO9zd3Lsde4HEpMiB7Fin0N18VAlfN7fRd0JLgxz79gVzRp.gBVwKZbcKjGiDM
 1qP24IaTObs78ybu5BAoKanpQS2oV0ceX57titt5Vujg1bUH2qUQtYOq.MPnDKNX2QIXNUQcENA1
 4oD5zw4KbYlOatu2GEN4F0pi8NQRNRUXJ116Kb1A5OEbTesIwt_ueZ_VgWJ2Efi_oAHFOLyN1FML
 2SFyxTp_AfwDHf1fP7rtbvzfk8tPcQTCQ_mhTtTUQIidIrEnox0WWQYy9FRRm6Ylfg.GCuSQLlLe
 ZbCjObZ.bnO9mmiUM_u.ePhSdAmhd0p9GQs_XKyj5E8EphYpyURHAh576Prjo6JhModnHov4QzG4
 ZW0NAHZglq2xzgPhs69Tmrj8ubovMU6NtS3KPTvG.G05J87Gp0AgMCK7I.PZa8DfWrbbUxtkSfUw
 .wRiEUG6EF5Lste3qgRwLP_eyaYsisbmxOzAyrLkVRGH3ERQDowhhJfq7xLKPR2gSiYwQlhdJr1A
 PqU9aiwhACf2CZ_Jeu6.KyXSD0GGbXe9SPbj2orijrFKGWUXklmbbFPs_LPyHIGbdvG7BAL3pbpb
 SmZIlGNWdDLgErcwZscosIcTovjjqJO3J1vTAFGZHTFrrl1h5aU__Iv.BZNm4DTI.8BOobR2G.I0
 XCvdoLFAccPFcnFXCJYlXYA10cn8iCySAD8UOdFj34r3hWBZ_rj7opdDl83AbxOeBgx7Hbp7Atmb
 bTuzKfyI1fdDI4KbKuiAKVmhK.4O0lf4o6y6.XSWQhoPmqPgX9lIQZvxTJEVdz7EJBE3CnxJy5wj
 Xuy70twR0N4qH4SI05ppsGowcF4eNHMEcRqYmwUSk1AR9yoQQdaXeQ7lJ0_7uvOOhE_ZYM309s9W
 NpJzybuUWT5U8pQ1N3dBIzILl9fD0FAZjAvduNHFzNnihUNEo47wox8_Q0uma6gIGBL8cy6r9KDM
 HRg2xFwBe_pLptE2RkISWjwAULOkBdO94LYdN23Io4d9tilgJLTqWWKZcjkJGw7na5U438SR6y1l
 5tpNF..GRuH28ofP8MU6pUbt6ln7dTlW_cYB81jgs3tpYj4pbgoKjlTtHPELTCm1Ime.pPAl_WGr
 YCtn.xyrq1Bcq2NRjI2py7_2L0RebYTVjQ0sArrWRhWlY9UfkMEFNFJg1VW2rL5agP4AApoGd_AW
 7qIZhqGvm3sDprX4f3Q1TmU4Phm4ZGsq6SNCncFOTOITb_jKIEdSfvFDdN7cdq8fAWd4qjcrqnJz
 27of61bpYq7Ul2XhltDeUIKIYvFpdvI03PIi946Ql3UDxE5HTx33Nubp8z3.r33UXFV.T1Kb.a3c
 TlpPhQduNbqHrhKTuHEL9CCivumFXroD.uSjAtFGgDcbaDiuGkQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.bf2.yahoo.com with HTTP; Tue, 25 Aug 2020 09:40:29 +0000
Date:   Tue, 25 Aug 2020 09:40:26 +0000 (UTC)
From:   "Mr. Thompson Govo" <mrthompson.govo2214@gmail.com>
Reply-To: mrthompson.govo2@gmail.com
Message-ID: <1470571842.5286552.1598348426939@mail.yahoo.com>
Subject: Hello Dear,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <1470571842.5286552.1598348426939.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16455 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dear,

I am Mr. Thompson Govo. and I work with UNITED BANK OF AFRICA. Please
Can you use ATM Visa card to withdraw money at ATM cash machine in
your country? I want to transfer money to you from my country; it=E2=80=99s
part of money taken by some old politician that was forced out of
power.

I will change the account details to yours, and apply for a visa card
with your details in our bank, they will send the visa card to you and
you will be withdrawing money with it and always send my own
percentage of the money, and the money we are talking about is
$8.4Million us dollars.

Whatever amount you withdraw daily, you will send 50% to me and you
will take 50%, the visa card and the bank account will be on your
name, I will be waiting for your information as soon as possible.
Your name.......................... .................

Age........................... ......................

Sex........................... ......................

Country....................... ......................

Occupation.................... ......................

Phone number........................ ................

         contact me with this my private emails I.D (mrthompson.govo2@gmail=
.com)


Best Regards.

Mr. Thompson Govo
