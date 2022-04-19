Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6768150709D
	for <lists+linux-man@lfdr.de>; Tue, 19 Apr 2022 16:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232753AbiDSOeL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Apr 2022 10:34:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231671AbiDSOeK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Apr 2022 10:34:10 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD77611140
        for <linux-man@vger.kernel.org>; Tue, 19 Apr 2022 07:31:27 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id u15so33287893ejf.11
        for <linux-man@vger.kernel.org>; Tue, 19 Apr 2022 07:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=cvfYEjF7QKOIf/caSAhp4YLSCOj7kiNo1L7dgNRsEag=;
        b=qRZULRW9TsJkF9GE2unY/y8BG1Rc84Io9SnQ9uq8nWDhjhPGBGZqX6zOaQH/v1PCSb
         dhLF4hTRvuYVubFWqtExsQq8oK53Zo344WvI32xu0pAj0DGWlIgVNMYzvJjNoCd5Y9FJ
         M8ffjSKC56kb/cI6wt0brhm9prqTKdvm30Cz58nOPPXFixgJvmCbuFs1XBKYwjr4GIX+
         kGIFedKZfgQYK6CIKgQFTGA9dSQQrn+l57e4rWVeztb3zRW3EW18kpfpxy46GSOjAUnL
         EeSj5PWgrzauTI3+sZ3L+svLtrkfRbJhnqpdevfhtvMHstNACZ2XMBigKhY4HumLcSr/
         U1yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=cvfYEjF7QKOIf/caSAhp4YLSCOj7kiNo1L7dgNRsEag=;
        b=nCAOFSx/5Q9SXRalL75PPo+e7PQZBRs/R6MgUiQ/N6nrTD3MEyAZMFTlbNuGXdT/zU
         kgVpUsgAbVMEazDNzxJDByX88MI92+XdaKGNPUP+3N62B+mNG/qPlNtJql3arcbBezz6
         CbOETWu14FjNZSqVBTsRWfCSBtYggPMNfv/lqMXr8IVmZlxKFJKYQU//o1fYaG2YrCGd
         YpQ841FUPrqH9mOqUdMiccsZ0oyzWKx0hpxRgta3xOt3kWCuAj+y2DVdIUtPa7erfOkB
         /Gh1cCCcI9jiP4XS8VuRrCkrysJF8k4URec0w9yjY8EZ3E+KAYCf0mARTjY3z8j03lRk
         ojdg==
X-Gm-Message-State: AOAM532LgDN4Rae5fpHDxb6SQIAsJ8IpTg7KkvqmrCX+UwGqucPRXwaw
        WhQ9thE4KpA71HEM1F4uBEa8RpignGo2/cv0JihMVbhLfAQmGQ==
X-Google-Smtp-Source: ABdhPJzAHJMcNXv5Yj4ArkaH3UuNl9XlNLjARD3SYP6Xu7wMdduBrR6boKOP5UsBj6kqbgyNjmLERqPR1dQut5X3nWE=
X-Received: by 2002:a17:906:d555:b0:6da:ac8c:f66b with SMTP id
 cr21-20020a170906d55500b006daac8cf66bmr13629952ejc.107.1650378675962; Tue, 19
 Apr 2022 07:31:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2103:0:0:0:0:0 with HTTP; Tue, 19 Apr 2022 07:31:15
 -0700 (PDT)
Reply-To: uchennailobitenone@gmail.com
From:   uchenna <okeyyoyopa@gmail.com>
Date:   Tue, 19 Apr 2022 16:31:15 +0200
Message-ID: <CAHTws=JhfhV2p4QrXFhxgPWfvpPM6WdJqRDsrw_aFOU8_mD1ow@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        HK_RANDOM_ENVFROM,HK_RANDOM_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:62f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  1.0 HK_RANDOM_ENVFROM Envelope sender username looks random
        *  1.0 HK_RANDOM_FROM From username looks random
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [okeyyoyopa[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gratulacje!

Organizacja Narod=C3=B3w Zjednoczonych dosz=C5=82a do wniosku, =C5=BCe z po=
moc=C4=85 nowo
wybranego prezydenta z powodu Covid-19 (koronawirusa) zostanie
wyp=C5=82acona kwota sze=C5=9Bciu milion=C3=B3w dolar=C3=B3w (6.000.000 dol=
ar=C3=B3w)
szcz=C4=99=C5=9Bliwym beneficjentom na ca=C5=82ym =C5=9Bwiecie. r=C3=B3=C5=
=BCne kraje i globalne
zagro=C5=BCenie dla tak wielu istnie=C5=84 ludzkich.

 Organizacja Narod=C3=B3w Zjednoczonych zleci=C5=82a szwajcarskiemu bankowi
=C5=9Bwiatowemu uwolnienie p=C5=82atno=C5=9Bci funduszu kompensacyjnego we =
wsp=C3=B3=C5=82pracy
z bankiem IBE w Wielkiej Brytanii.

P=C5=82atno=C5=9B=C4=87 zostanie przekazana na kart=C4=99 bankomatow=C4=85 =
Visa i wys=C5=82ana do
szcz=C4=99=C5=9Bliwego beneficjenta, kt=C3=B3ry z=C5=82o=C5=BCy wniosek za =
po=C5=9Brednictwem banku
IBE w Wielkiej Brytanii za po=C5=9Brednictwem dyplomatycznej firmy
kurierskiej znajduj=C4=85cej si=C4=99 w pobli=C5=BCu kraju beneficjenta.

S=C4=85 to informacje wymagane przez kierownictwo Zjednoczonego Kr=C3=B3les=
twa,
aby przekaza=C4=87 wyp=C5=82at=C4=99 funduszu kompensacyjnego do progu kraj=
u
beneficjenta.

1. Twoje imi=C4=99 i nazwisko:
2. Adres domowy:
3. Miasto:
4. Kraj:
5. Zaw=C3=B3d:
6. P=C5=82e=C4=87:
7. Stan cywilny:
8. Wiek:
9. Paszport / dow=C3=B3d osobisty / prawo jazdy
10. Numer telefonu:
Skontaktuj si=C4=99 z naszym identyfikatorem e-mail agenta:
nazwa solomo brandy

ADRES EMIL (solomonbrandyfiveone@gmail.com ) dla Twojej p=C5=82atno=C5=9Bci=
 bez zw=C5=82oki,

Pozdrowienia
Pani Mary J. Robertson.
