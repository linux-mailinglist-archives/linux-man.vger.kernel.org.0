Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B2614E1E35
	for <lists+linux-man@lfdr.de>; Mon, 21 Mar 2022 00:03:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242248AbiCTXEj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 19:04:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242265AbiCTXEh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 19:04:37 -0400
X-Greylist: delayed 1800 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 20 Mar 2022 16:03:11 PDT
Received: from 6.mo576.mail-out.ovh.net (6.mo576.mail-out.ovh.net [46.105.50.107])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D6F46432
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 16:03:09 -0700 (PDT)
Received: from player726.ha.ovh.net (unknown [10.108.16.164])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 30E3722D80
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 22:27:17 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player726.ha.ovh.net (Postfix) with ESMTPSA id 0506E288602A4;
        Sun, 20 Mar 2022 22:27:09 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G004c89355db-cc60-4dfd-818a-0e314edf2563,
                    8489DD52362C61B6C44A91A63DBA64F1408C721C) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sun, 20 Mar 2022 23:27:02 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>
Subject: Re: Exctracting source code from EXAMPLES
Message-ID: <20220320232702.351b5832@heffalump.sk2.org>
In-Reply-To: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
References: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/A01eF+HRveouBgHgoCYCCD6";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 12269212763330938502
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudeguddgudeiudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjedviedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/A01eF+HRveouBgHgoCYCCD6
Content-Type: multipart/mixed; boundary="MP_/W+=avsrhTvkgiO9SXCJbSIj"

--MP_/W+=avsrhTvkgiO9SXCJbSIj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Alex,

On Sun, 20 Mar 2022 21:34:47 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> I have ready some code to extract source code from EXAMPLES in man-pages.
> For that, I set up some convention:
>=20
> Enclose the code (including the enclosing .EX/.EE in a pair of comments
> with a very precise formatting:
>=20
> [[
> ...
> .\" SRC BEGIN (program_name.c)
> .EX
> #include <stdio.h>
>=20
> int main(void)
> {
> 	printf("Hello, world!");
> }
> .EE
> .\" SRC END
> ...
> ]]
>=20
> There can be multiple programs in a single page, with the only
> restriction that each of them has to have a different program_name
> (there can be collisions within different manual pages, but not within
> the same manual page)
>=20
> The Makefile will create a directory for each manal page, where the
> different programs will be created with the name specified in the
> comment (that's why it has to be different from others in the same page
> only).
>=20
> Please, check that you like what you see, and comment if not (or if yes
> too :).

I=E2=80=99ve been working on something similar, slightly further along (the=
 linting
targets work). The extraction scripts could do with some improvement, but t=
he
Makefile changes are small:

# Check that example programs include in man pages really build
Makefile.examples: $(MANPAGES)
	scripts/list-example-files $^ > $@

include Makefile.examples

# Sources are listed as well as objects to ensure we update all source files
# CPPFLAGS and TARGET_ARCH are defined to avoid warnings
.PHONY: check-example-programs
check-example-programs: CFLAGS =3D -Wall
check-example-programs: CPPFLAGS =3D
check-example-programs: TARGET_ARCH =3D
check-example-programs: $(EXAMPLE_SRCS) $(EXAMPLE_OBJS)

.PHONY: clean-example-programs
clean-example-programs:
	rm -f $(EXAMPLE_SRCS) $(EXAMPLE_OBJS)


scripts/list-example-files builds a separate Makefile to extract all the
programs, which ends up looking like

/home/steve/man-pages/man1/memusage.c: /home/steve/man-pages/man1/memusage.1
	scripts/extract-example-files $<

/home/steve/man-pages/man1/prog.c /home/steve/man-pages/man1/libdemo.c: /ho=
me/steve/man-pages/man1/sprof.1
	scripts/extract-example-files $<


The scripts are attached. The patterns used to identify source code are clo=
se
to those already present: .EX/.EE introduced by =E2=80=9CProgram source=E2=
=80=9D (in which
case the source code is extracted to a C file named after the man page) or =
by
a

\." Example file

comment which can optionally name the file.

This has identified some more man pages which need fixes to their example
code, I=E2=80=99ll send patches tomorrow.

Regards,

Stephen

--MP_/W+=avsrhTvkgiO9SXCJbSIj
Content-Type: application/octet-stream; name=extract-example-files
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=extract-example-files

IyEvdXNyL2Jpbi9hd2sgLWYKCmZ1bmN0aW9uIGRpcm5hbWUoZmlsZW5hbWUpIHsKICAgIGlmICgh
c3ViKC9cL1teXC9dKlwvPyQvLCAiIiwgZmlsZW5hbWUpKSB7CglyZXR1cm4gIi4iCiAgICB9IGVs
c2UgaWYgKGZpbGVuYW1lICE9ICIiKSB7CglyZXR1cm4gZmlsZW5hbWUKICAgIH0KICAgIHJldHVy
biAiLyIKfQoKZnVuY3Rpb24gc3RhcnRfb3V0cHV0KG91dHB1dCkgewogICAgY3Vycm91dCA9IG91
dHB1dAogICAgb3V0cHV0dGluZyA9IDEKICAgICQwID0gIi5USCBcIi8vXCIgMFxuLkVYIgp9Cgpm
dW5jdGlvbiBlbmRfb3V0cHV0KCkgewogICAgb3V0cHV0dGluZyA9IDAKfQoKQkVHSU5GSUxFIHsK
ICAgIGN1cnJvdXQgPSAiIgp9CgojIFdlIGxvb2sgZm9yIC5FWC8uRUUgYmxvY2tzIGludHJvZHVj
ZWQgYnkgIlByb2dyYW0gc291cmNlIiBhbmQvb3IgYnkKIyBhIHF1YWxpZmllci4gVGhpcyBxdWFs
aWZpZXIgY2FuIGJlIGFkZGVkIGJlZm9yZSAuRVggYW5kIGluc2lkZSB0aGUgYmxvY2sKIyB0byBu
YW1lIGZpbGVzIHVzaW5nIGEgY29tbWVudCBvZiB0aGUgZm9ybQojIFwuIiBFeGFtcGxlIGZpbGU6
IGZvb2Jhci5jCiMgb3IgaXQgY2FuIGludHJvZHVjZSBleGFtcGxlIGZpbGVzIHdpdGhvdXQgYSAi
UHJvZ3JhbSBzb3VyY2UiIHN1YnNlY3Rpb246CiMgXC4iIEV4YW1wbGUgZmlsZQojIFdoZW4gbmFt
ZXMgYXJlIHVzZWQsIHdlIHdhbnQgdGhlIGZpcnN0IGNvbW1lbnQgYmVmb3JlIC5FWCBzbyB0aGF0
IHdlIGF2b2lkCiMgcG90ZW50aWFsbHkgZGV0ZWN0aW5nIGEgZHVwbGljYXRlIHdoZW4gdGhlcmUg
d291bGQgYmUgbm8gY29udGVudAoKIyBVbm5hbWVkIGV4YW1wbGUgZmlsZSAoZGVjaXNpb24gZGVs
YXllZCB1bnRpbCAuRVgpCi9Qcm9ncmFtIHNvdXJjZSQvIHx8IC9eXC5cXCIgRXhhbXBsZSBmaWxl
JC8gewogICAgaW5wcyA9IDE7IG91dHB1dCA9IHN1YnN0cihGSUxFTkFNRSwgaSwgbGVuZ3RoKEZJ
TEVOQU1FKSAtIDIpICIuYyIKfQoKIyBFeGFtcGxlIG5hbWVkIGluIHRoZSB0ZXh0Ci9Qcm9ncmFt
IHNvdXJjZTogLyB8fCAvXlwuXFwiIEV4YW1wbGUgZmlsZTogLyB7CiAgICBpbnBzID0gMTsgb3V0
cHV0ID0gZGlybmFtZShGSUxFTkFNRSkgIi8iICRORgogICAgaWYgKGluZXgpIHsKCSMgV2UndmUg
YWxyZWFkeSBzdGFydGVkIGEgYmxvY2ssIHdlJ3JlIGNoYW5naW5nIGZpbGVzCglzdGFydF9vdXRw
dXQob3V0cHV0KQogICAgfQp9CgppbnBzICYmICFpbmV4ICYmIC9eXC5FWCQvIHsKICAgIGluZXgg
PSAxCiAgICBzdGFydF9vdXRwdXQob3V0cHV0KQp9CgovXlwuRUUkLyB7IGlucHMgPSAwOyBpbmV4
ID0gMCB9CgppbnBzICYmIGluZXggJiYgb3V0cHV0dGluZyB7CiMgICAgcHJpbnQgPiBjdXJyb3V0
CiAgICBwcmludCB8ICgiZ3JvZmYgLW1hbiAtVHV0ZjggLSA+ICIgY3Vycm91dCkKfQo=

--MP_/W+=avsrhTvkgiO9SXCJbSIj
Content-Type: application/octet-stream; name=list-example-files
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=list-example-files

IyEvdXNyL2Jpbi9hd2sgLWYKCiMgT3V0cHV0IGZpbGUgbmFtZXMgYXJlIHRyYWNrZWQgdG8gZW5z
dXJlIHdlIGRvbid0IGhhdmUgZHVwbGljYXRlcwoKQkVHSU5GSUxFIHsKICAgIGZpbGVzID0gIiIK
fQoKZnVuY3Rpb24gZGlybmFtZShmaWxlbmFtZSl7CiAgICBpZiAoIXN1YigvXC9bXlwvXSpcLz8k
LywgIiIsIGZpbGVuYW1lKSkgewoJcmV0dXJuICIuIgogICAgfSBlbHNlIGlmIChmaWxlbmFtZSAh
PSAiIikgewoJcmV0dXJuIGZpbGVuYW1lCiAgICB9CiAgICByZXR1cm4gIi8iCn0KCmZ1bmN0aW9u
IHN0YXJ0X291dHB1dChvdXRwdXQpIHsKICAgIGlmIChvdXRwdXQgaW4gb3V0cHV0cykgewoJcHJp
bnRmICJEdXBsaWNhdGUgZGV0ZWN0ZWQsICVzIGlzIHByb2R1Y2VkIGJ5ICVzIGFuZCAlcy5cbiIs
IG91dHB1dCwgb3V0cHV0c1tvdXRwdXRdLCBGSUxFTkFNRQogICAgfQogICAgb3V0cHV0c1tvdXRw
dXRdID0gRklMRU5BTUUKICAgIGlmIChmaWxlcykgewoJZmlsZXMgPSBmaWxlcyAiICIgb3V0cHV0
CiAgICB9IGVsc2UgewoJZmlsZXMgPSBvdXRwdXQKICAgIH0KfSAgICAKCiMgV2UgbG9vayBmb3Ig
LkVYLy5FRSBibG9ja3MgaW50cm9kdWNlZCBieSAiUHJvZ3JhbSBzb3VyY2UiIGFuZC9vciBieQoj
IGEgcXVhbGlmaWVyLiBUaGlzIHF1YWxpZmllciBjYW4gYmUgYWRkZWQgYmVmb3JlIC5FWCBhbmQg
aW5zaWRlIHRoZSBibG9jawojIHRvIG5hbWUgZmlsZXMgdXNpbmcgYSBjb21tZW50IG9mIHRoZSBm
b3JtCiMgXC4iIEV4YW1wbGUgZmlsZTogZm9vYmFyLmMKIyBvciBpdCBjYW4gaW50cm9kdWNlIGV4
YW1wbGUgZmlsZXMgd2l0aG91dCBhICJQcm9ncmFtIHNvdXJjZSIgc3Vic2VjdGlvbjoKIyBcLiIg
RXhhbXBsZSBmaWxlCiMgV2hlbiBuYW1lcyBhcmUgdXNlZCwgd2Ugd2FudCB0aGUgZmlyc3QgY29t
bWVudCBiZWZvcmUgLkVYIHNvIHRoYXQgd2UgYXZvaWQKIyBwb3RlbnRpYWxseSBkZXRlY3Rpbmcg
YSBkdXBsaWNhdGUgd2hlbiB0aGVyZSB3b3VsZCBiZSBubyBjb250ZW50CgojIFVubmFtZWQgZXhh
bXBsZSBmaWxlIChkZWNpc2lvbiBkZWxheWVkIHVudGlsIC5FWCkKL1Byb2dyYW0gc291cmNlJC8g
fHwgL15cLlxcIiBFeGFtcGxlIGZpbGUkLyB7CiAgICBpbnBzID0gMTsgb3V0cHV0ID0gc3Vic3Ry
KEZJTEVOQU1FLCBpLCBsZW5ndGgoRklMRU5BTUUpIC0gMikgIi5jIgp9CgojIEV4YW1wbGUgbmFt
ZWQgaW4gdGhlIHRleHQKL1Byb2dyYW0gc291cmNlOiAvIHsgaW5wcyA9IDE7IG91dHB1dCA9IGRp
cm5hbWUoRklMRU5BTUUpICIvIiAkTkYgfQoKIyBOYW1lZCBleGFtcGxlIGZpbGUKL15cLlxcIiBF
eGFtcGxlIGZpbGU6IC8gewogICAgaW5wcyA9IDEKICAgIG91dHB1dCA9IGRpcm5hbWUoRklMRU5B
TUUpICIvIiAkTkYKICAgIGlmIChpbmV4KSB7CgkjIFdlJ3ZlIGFscmVhZHkgc3RhcnRlZCBhIGJs
b2NrLCB3ZSdyZSBjaGFuZ2luZyBmaWxlcwoJc3RhcnRfb3V0cHV0KG91dHB1dCkKICAgIH0KfQoK
IyBTdGFydCBvZiB0aGUgLkVYIGJsb2NrCmlucHMgJiYgIWluZXggJiYgL15cLkVYJC8gewogICAg
aW5leCA9IDEKICAgIHN0YXJ0X291dHB1dChvdXRwdXQpCn0KCi9eXC5FRSQvIHsgaW5wcyA9IDA7
IGluZXggPSAwIH0KCkVOREZJTEUgewogICAgaW5wcyA9IDA7IGluZXggPSAwCiAgICBpZiAoZmls
ZXMpIHsKCXByaW50ZiAiJXM6ICVzXG4iLCBmaWxlcywgRklMRU5BTUUKCXByaW50ZiAiXHRzY3Jp
cHRzL2V4dHJhY3QtZXhhbXBsZS1maWxlcyAkPFxuXG4iCiAgICB9Cn0KCkVORCB7CiAgICBwcmlu
dGYgIkVYQU1QTEVfU1JDUyArPSIKICAgIGZvciAob3V0cHV0IGluIG91dHB1dHMpIHsKCXByaW50
ZiAiICVzIiwgb3V0cHV0CiAgICB9CiAgICBwcmludGYgIlxuRVhBTVBMRV9PQkpTICs9IgogICAg
Zm9yIChvdXRwdXQgaW4gb3V0cHV0cykgewoJaWYgKHN1YigvXC5jJC8sICIubyIsIG91dHB1dCkp
IHsKCSAgICBwcmludGYgIiAlcyIsIG91dHB1dAoJfQogICAgfQogICAgcHJpbnRmICJcblxuIgp9
Cg==

--MP_/W+=avsrhTvkgiO9SXCJbSIj--

--Sig_/A01eF+HRveouBgHgoCYCCD6
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmI3qjYACgkQgNMC9Yht
g5x4dw//aV63B/826PLPtNyHz/jpRuaZ7nVbl4cH4POfkp8uz6PHWhVvP/74zh1H
2Ip8EAAj8jpeTjevz2AwECWqUp6vwXAj/pnZRX+nZYdVF+5UivhPhl+24ytZHM0F
ctitD+22CawGoD0oa1ck59CKz4Rvk7Jo/rNDV4qR91fgmU5UajkSLye2Oib4tXT1
UQW1/kum+Jf4W7+laZNvZESEA61ikWS5B6PG9Kc5BiTDHs8HKbv+8ZE0AZL7UDaO
WUycMQk6KcCLQofuxqk+LVvxq0vit1UFLGJQzUochziNyfjP+4Neeho9FwequymC
8f2ul9Sj27yBWbI4QvlTKg5XsN8AuTAT3//Gt5M6PPVvwvnnSSl7tl+OoUE2ffD2
xCZ4nTAOaHlpCrIQc4vUWQM5Xq0mp3BJfJle0nnWzHqMbOzX/YFj7OtnO/C0gDM5
EinBYQn9+CsTjqkJtZ3UbyxnXiAFK1syQ168ylIIm5b+6Pl8HZFQvRCESfBQc34K
ouSAxzhUTp9ArsnymKodZ00QjrGDH4bq24Y7AwznjCIIXuq0T7C3WOIoAN8NX4EL
KJ2oc8M6n6aAN2mAcHr0UfYDAaVEcbIvukiYEdDjp6tQ9jBb77mwJ+a0ATqd/pSc
+9f35AlRkwkWJBa/++EzvGHQLBcywA6oP0Rf8Fs1ti3kA7GCyCg=
=88mC
-----END PGP SIGNATURE-----

--Sig_/A01eF+HRveouBgHgoCYCCD6--
