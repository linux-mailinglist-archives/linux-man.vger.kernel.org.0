Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0879B64C22E
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 03:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236898AbiLNCPi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 21:15:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236830AbiLNCPg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 21:15:36 -0500
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBBA424BD2
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 18:15:35 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 8B1815C00E6;
        Tue, 13 Dec 2022 21:15:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 13 Dec 2022 21:15:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm1; t=1670984133; x=
        1671070533; bh=1yPW07MKyOMK8AB6uf+zjzFVGotZWda55NRPqWgkSuI=; b=X
        TVET1YNQtl/LnJaVGLNg6tWs2u3nBO9f35K/HXmXK1l78R57MgNGAutluTN9UVRn
        DiI2wl68qpOf1A5ZWXU5d9IfavgQ6SFxDq7B13vBWEVZZ+zrLrs9G6xoQ9vwFurZ
        FTTpgEf94pWw9gqtaJQZ01TCeuemniH1A3putbrNC8dGPFROKATWx1k8ndm8a7Nr
        LcPm1EXh7w3UBPHU/WGSs9XVEkDQXVQLY2MqeG80Wx6W2tkc9zUZwrMVknWwf17B
        VO57TLMNEiolE+W0GFSqB9iCuJsDcChjP/jBe7wtRqy9c1/Ly5guQW5EnOm10qB7
        5IHAEYbsb7qfCALHFFPfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1670984133; x=
        1671070533; bh=1yPW07MKyOMK8AB6uf+zjzFVGotZWda55NRPqWgkSuI=; b=g
        6QucMKrSvOq+KglcFqZRVfgPSGDDWVxKF2UwxMhin8ZoUXzdNBsl0Afvbjp+7nOE
        W1peUTTraI6eY2ragJKzzHWN8VUmWPhtwT8TsTSDwsEYTjeCoLPdD7yG75M/p1fI
        E/NHOtYDpTIfIczWZjQckBscrOAaLnBdSTB4jMR7W4OG4ShOjQRUbmpTq9arwso0
        dNAs4WgmpEBvmXoGB+atlTJHpZyLNiNr2NZI3tl8Bl9Xe8miZUOIm5YBMj+RQwFj
        xrmYAF9uyrWRihAD3O2YsEmpHURlttDj/Fpb4BhemVTSkfGkCHmnQVmZHoG1W3mG
        XBerHooklVXLWjDlfxV0A==
X-ME-Sender: <xms:xTGZY49OCBaJ_q95Mr4oyquJtL6tIhB461HUbr9uphggIGkRdQfkVw>
    <xme:xTGZYwsJ6I2KpvyFa_7igS79x4h2TlxngKOy7Cbn_rl_3RnGgOEXgBRAtujgsQupU
    e_VvQVUrixww_psB98>
X-ME-Received: <xmr:xTGZY-ATcLuUGhs1Q9y-F7jNBl6gI5cLA-ngGIKdtylPQwqXqSzbZmx2anTTCFyRsmVKHOddzqKItIkX_mNg3dDA7dp23qy39Mz-tQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvgdegfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufhfffgjkfgfgggtgfesthhqredttderjeenucfhrhhomhepkggrtghk
    ucghvghinhgsvghrghcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenucggtffrrg
    htthgvrhhnpefhtdeuuefggfevffffieeviedufeeugeelhfegjeehudelfeelteehgeeh
    hfejhfenucffohhmrghinhepphhorhhtjedtrdhnvghtnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomhepiigrtghksehofihlfhholhhiohdrohhr
    gh
X-ME-Proxy: <xmx:xTGZY4ci91dEjHOfBexb_waJLuG7nqFmz_rjOM6PSTQJ3vPx2SMLug>
    <xmx:xTGZY9PB9p_sJdSLR7LRLbkQCKv24qM08PeOn8UzRzKlmAiMFu9how>
    <xmx:xTGZYym1nvci0eFzHVBd1IjQMSEegGHmyEG9onF89E43jFbefJ_3VA>
    <xmx:xTGZY2YWe65ePImPJ2xv58gMTCHHeNZfm5lfQMwGAaR7hSRh8N8NfQ>
Feedback-ID: i876146a2:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Dec 2022 21:15:32 -0500 (EST)
From:   Zack Weinberg <zack@owlfolio.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
        Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
        <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
        <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
        <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
        <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
        <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
        <ypikk02xv09c.fsf@owlfolio.org>
        <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
Date:   Tue, 13 Dec 2022 21:13:46 -0500
In-Reply-To: <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com> (Alejandro
        Colomar's message of "Mon, 12 Dec 2022 11:21:29 +0100")
Message-ID: <ypikwn6uag11.fsf@owlfolio.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx.manpages@gmail.com> writes:
> Okay, so %s and $[ are at least usable.  Useful?  I don't know.  Probably=
=20
> fgets(3) and then either <string.h> or <regex.h> functions or taking=20
> unterminated strings (pointer plus length) is a much better idea.

Yeah, agreed.

>> The other design-level issue affects all of the numeric conversions:
>> if the result of (abstract, infinite-precision) numeric input conversion
>> does not fit in the variable supplied to hold the result of that convers=
ion,
>> the behavior is undefined.  The manpage says that you get an ERANGE error
>> in this case, and that may be the behavior _glibc_ guarantees (I don=E2=
=80=99t
>> actually know for sure), but in the modern era of compilers drawing
>> inferences from undefined behavior, a guarantee by one C library is
>> not good enough.
>
> This, to me, is enough to mark them as deprecated in the manual page.  An=
yway,=20
> deprecating something is not removing it.  It's just saying "hey, you sho=
uldn't=20
> be using that; it's bad, and don't expect that ISO C will keep it around =
next=20
> century".

In my lexicon =E2=80=9Cdeprecated=E2=80=9D is a very strong statement, poss=
ibly because
I=E2=80=99m used to seeing it in the context of standards where it means =
=E2=80=9Cwe
think we should never have added this in the first place, there=E2=80=99s no
plausible way to fix it, but we have to keep it around for backward
compatibility.=E2=80=9D

The scanf numeric conversions could be fixed with a one-sentence edit to
the C standard: change the last sentence of http://port70.net/~nsz/c/c11/n1=
570.html#7.21.6.2p10
from =E2=80=9CIf this object does not have an appropriate type, or if the r=
esult
of the conversion cannot be represented in the object, the behavior is
undefined=E2=80=9D to =E2=80=9CIf this object does not have an appropriate =
type, the
behavior is undefined.  If the result of the conversion cannot be
represented in the object, the execution of the directive fails; this
condition is a matching failure.=E2=80=9D  And, even if the C committee doe=
sn=E2=80=99t
want to make that change, open-source C libraries can and should do it
unilaterally, as a documented implementation extension.  I think that=E2=80=
=99s
a better plan than declaring most uses of *scanf =E2=80=9Cdeprecated.=E2=80=
=9D

>>  And, the scanf family *can* be used safely with
>> sufficient care =E2=80=94 read entire lines of input with getline,
>
> If getline(3) _is necessary_ to be safe, then I would deprecate the strea=
m=20
> functions, and keep only the "s" variants.  Is it?

Oh, right, the _third_ headache with fscanf.

Yes, I think it would be fair to say that it is almost always a mistake
to use the scanf variants that read directly from a FILE.  The issue
here is, at its root, that people new to C _expect_ a scanf call to read
an entire line of input, but it doesn=E2=80=99t. This is especially problem=
atic
for interactive input =E2=80=94 they try to use plain scanf to read numeric
input, don=E2=80=99t realize that `scanf("%d", &arg)` doesn=E2=80=99t consu=
me the \n in
the terminal=E2=80=99s line buffer _after_ the number, and get very confused
when a subsequent getchar() reads that \n instead of the =E2=80=98y=E2=80=
=99 or =E2=80=98n=E2=80=99 they
were expecting as a response to the _next_ prompt.  But it=E2=80=99s _also_=
 a
problem for error recovery, because scanf will stop in the middle of the
line when a matching failure occurs, and if you naively assumed it would
throw away the rest of the line, you get an error cascade.

The recommended practice to avoid this trap, is that you should use one
of the functions that _does_ read an entire line of input, i.e. fgets or
getline, and then parse the line as a string.  It would make sense for
the [f]scanf manpage to say that.

>> In a more sober tone of voice I suggest this text for the manpage:
=E2=80=A6
> That makes sense to me.  Would you mind sending a patch?  :)

I do not have time to do that anytime soon.  Also, maybe glibc=E2=80=99s
behavior on numeric input overflow should be fixed first.

zw
